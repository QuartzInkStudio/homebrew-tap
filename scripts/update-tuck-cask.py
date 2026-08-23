#!/usr/bin/env python3
"""Sync the Tuck Homebrew Cask with the first item in the Stable appcast."""

from __future__ import annotations

import hashlib
import os
from pathlib import Path
import re
import sys
import time
from urllib.request import Request, urlopen
import xml.etree.ElementTree as ET


APPCAST_URL = "https://usetuck.com/appcast.xml"
SPARKLE_NS = "http://www.andymatuschak.org/xml-namespaces/sparkle"
USER_AGENT = "QuartzInkStudio-homebrew-tap-updater/1.0"


def download(url: str) -> bytes:
    request = Request(url, headers={"User-Agent": USER_AGENT})
    with urlopen(request, timeout=60) as response:
        return response.read()


def main() -> int:
    repository = Path(os.environ.get("GITHUB_WORKSPACE", Path(__file__).resolve().parents[1]))
    cask_path = repository / "Casks" / "tuck-menu-bar.rb"

    appcast_url = f"{APPCAST_URL}?homebrew-sync={time.time_ns()}"
    root = ET.fromstring(download(appcast_url))
    item = root.find("./channel/item")
    if item is None:
        raise RuntimeError("Stable appcast has no release item")

    short_version = item.findtext(f"{{{SPARKLE_NS}}}shortVersionString", "").strip()
    enclosure = item.find("enclosure")
    if enclosure is None:
        raise RuntimeError("Stable appcast item has no enclosure")

    build = item.findtext(f"{{{SPARKLE_NS}}}version", "").strip()
    dmg_url = enclosure.attrib.get("url", "").strip()
    expected_length = int(enclosure.attrib.get("length", "0"))

    if not re.fullmatch(r"\d+\.\d+\.\d+", short_version):
        raise RuntimeError(f"Unexpected Stable version: {short_version!r}")
    if not build.isdigit():
        raise RuntimeError(f"Unexpected Stable build: {build!r}")

    expected_url = f"https://usetuck.com/download/Tuck-{short_version}-build{build}.dmg"
    if dmg_url != expected_url:
        raise RuntimeError(f"Stable enclosure URL mismatch: {dmg_url!r}")

    dmg = download(dmg_url)
    if len(dmg) != expected_length:
        raise RuntimeError(
            f"Stable DMG length mismatch: appcast={expected_length}, downloaded={len(dmg)}"
        )

    sha256 = hashlib.sha256(dmg).hexdigest()
    cask = cask_path.read_text(encoding="utf-8")
    cask, version_replacements = re.subn(
        r'^  version "[^"]+"$',
        f'  version "{short_version},{build}"',
        cask,
        count=1,
        flags=re.MULTILINE,
    )
    cask, sha_replacements = re.subn(
        r'^  sha256 "[0-9a-f]{64}"$',
        f'  sha256 "{sha256}"',
        cask,
        count=1,
        flags=re.MULTILINE,
    )
    if version_replacements != 1 or sha_replacements != 1:
        raise RuntimeError("Could not update the expected Cask version and SHA-256 fields")

    previous = cask_path.read_text(encoding="utf-8")
    if cask == previous:
        print(f"Tuck Cask is already current: {short_version} build {build}")
        return 0

    cask_path.write_text(cask, encoding="utf-8")
    print(f"Updated Tuck Cask to {short_version} build {build} ({sha256})")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(1)
