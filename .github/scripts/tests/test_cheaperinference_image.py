"""Unit tests for cheaperinference_image helpers (no network)."""

from __future__ import annotations

import base64
import importlib.util
import json
import sys
from pathlib import Path

import pytest

SCRIPT = Path(__file__).resolve().parents[1] / "cheaperinference_image.py"


def _load():
    spec = importlib.util.spec_from_file_location("cheaperinference_image", SCRIPT)
    assert spec and spec.loader
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod
    spec.loader.exec_module(mod)
    return mod


@pytest.fixture(scope="module")
def ci():
    return _load()


def test_data_url_png(ci, tmp_path: Path):
    png = (
        b"\x89PNG\r\n\x1a\n"
        + b"\x00" * 8  # not a valid PNG body, but magic is enough for helper
    )
    # Write minimal valid-looking magic only — helper only checks magic
    p = tmp_path / "a.png"
    p.write_bytes(png)
    url = ci._data_url(p)
    assert url.startswith("data:image/png;base64,")
    assert base64.b64decode(url.split(",", 1)[1]) == png


def test_save_image_b64(ci, tmp_path: Path):
    raw = b"\xff\xd8\xff" + b"jpeg-bytes"
    payload = {"data": [{"b64_json": base64.b64encode(raw).decode()}]}
    out = ci._save_image(payload, tmp_path / "out.png")
    assert out.read_bytes() == raw


def test_generate_requires_key(ci, monkeypatch: pytest.MonkeyPatch):
    monkeypatch.delenv("CHEAPERINFERENCE_API_KEY", raising=False)
    with pytest.raises(SystemExit) as e:
        ci.main(["generate", "--prompt", "x", "--out", "/tmp/x.png"])
    assert e.value.code == 1


def test_meta_shape(ci):
    meta = ci._meta(
        {"request_id": "r1", "billing": {"billed_cost_usd": "0.01"}, "created": 1},
        "flux-2-max",
        "images.generations",
        Path("o.png"),
    )
    assert meta["tool"] == "Cheaper Inference"
    assert meta["operation"] == "images.generations"
    assert meta["request_id"] == "r1"
    json.dumps(meta)  # serializable
