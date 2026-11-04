#!/usr/bin/env python3
"""Build a JiajiaBox update APK by differential packaging.

The project is an apktool-decoded tree whose full resource rebuild currently
fails on a decoded resource, so releases are produced by replacing individual
entries (DEX/assets/native libs) inside the previous signed APK, bumping the
version code, re-aligning and re-signing.
"""
from __future__ import annotations

import argparse
import hashlib
import os
import re
import shlex
import shutil
import struct
import subprocess
import sys
import tempfile
import zipfile
import zlib
from copy import copy
from pathlib import Path

VERSION_CODE_ATTR = 0x0101021B
BUILDCONFIG_CLASS = "Lio/nekohasekai/sagernet/BuildConfig;"


def _uint(d: bytearray, p: int) -> int:
    return struct.unpack_from("<I", d, p)[0]


def _ushort(d: bytearray, p: int) -> int:
    return struct.unpack_from("<H", d, p)[0]


def _uleb(d: bytearray, pos: int) -> tuple[int, int]:
    value = 0
    shift = 0
    while True:
        v = d[pos]
        pos += 1
        value |= (v & 127) << shift
        if v < 128:
            return value, pos
        shift += 7


def patch_manifest_version(data: bytes, new_version: int) -> tuple[bytes, int]:
    m = bytearray(data)
    pos = 8
    ids: list[int] = []
    changed = 0
    old = None
    while pos < len(m):
        kind, head, size = struct.unpack_from("<HHI", m, pos)
        if kind == 0x180:
            ids = list(struct.unpack_from("<" + "I" * ((size - head) // 4), m, pos + head))
        if kind == 0x102:
            start, stride, count = struct.unpack_from("<HHH", m, pos + 24)
            for i in range(count):
                a = pos + 16 + start + i * stride
                name = struct.unpack_from("<I", m, a + 4)[0]
                if name < len(ids) and ids[name] == VERSION_CODE_ATTR:
                    old = struct.unpack_from("<I", m, a + 16)[0]
                    struct.pack_into("<I", m, a + 16, new_version)
                    changed += 1
        pos += size
    if changed != 1:
        raise ValueError(f"expected exactly one versionCode attribute, found {changed}")
    return bytes(m), int(old)


def patch_buildconfig_version(data: bytes, new_version: int) -> tuple[bytes, int] | None:
    d = bytearray(data)
    strings = []
    for i in range(_uint(d, 56)):
        off = _uint(d, _uint(d, 60) + i * 4)
        _, off = _uleb(d, off)
        end = d.index(0, off)
        strings.append(bytes(d[off:end]).decode("utf-8", "surrogateescape"))
    types = [strings[_uint(d, _uint(d, 68) + i * 4)] for i in range(_uint(d, 64))]
    fields = [
        (types[_ushort(d, _uint(d, 84) + i * 8)], strings[_uint(d, _uint(d, 84) + i * 8 + 4)])
        for i in range(_uint(d, 80))
    ]
    for i in range(_uint(d, 96)):
        off = _uint(d, 100) + i * 32
        if types[_uint(d, off)] != BUILDCONFIG_CLASS:
            continue
        class_data = _uint(d, off + 24)
        values = _uint(d, off + 28)
        sizes = []
        for _ in range(4):
            v, class_data = _uleb(d, class_data)
            sizes.append(v)
        static = []
        index = 0
        for _ in range(sizes[0]):
            delta, class_data = _uleb(d, class_data)
            _, class_data = _uleb(d, class_data)
            index += delta
            static.append(index)
        n, pos = _uleb(d, values)
        for field_idx in static[:n]:
            tag = d[pos]
            pos += 1
            typ = tag & 31
            size = (tag >> 5) + 1
            if fields[field_idx][1] == "VERSION_CODE":
                if typ != 4 or size < 2:
                    raise ValueError("unexpected VERSION_CODE encoding")
                old = int.from_bytes(d[pos:pos + size], "little", signed=True)
                d[pos:pos + size] = new_version.to_bytes(size, "little", signed=True)
                d[12:32] = hashlib.sha1(d[32:]).digest()
                struct.pack_into("<I", d, 8, zlib.adler32(d[12:]) & 0xFFFFFFFF)
                return bytes(d), old
            if typ not in (0x1E, 0x1F):
                pos += size
    return None


def parse_replace(values: list[str]) -> dict[str, Path]:
    out = {}
    for value in values:
        if "=" not in value:
            raise argparse.ArgumentTypeError(f"--replace expects DEST=SRC, got {value!r}")
        dest, src = value.split("=", 1)
        src_path = Path(src)
        if not src_path.is_file():
            raise argparse.ArgumentTypeError(f"replacement source not found: {src_path}")
        out[dest] = src_path
    return out


def run(command: list[str], **kwargs) -> subprocess.CompletedProcess:
    print("+", " ".join(str(c) for c in command), flush=True)
    return subprocess.run([str(c) for c in command], **kwargs)


def resolve_tool(command: str, tmpdir: Path) -> list[str]:
    """Accept a command or path; make noexec binaries usable from shared storage."""
    parts = shlex.split(command)
    if len(parts) == 1:
        path = Path(parts[0])
        if path.is_file() and path.suffix == ".sh":
            return ["bash", str(path)]
        if path.is_file() and not os.access(path, os.X_OK):
            tools_dir = tmpdir / "tools"
            tools_dir.mkdir(exist_ok=True)
            copied = tools_dir / path.name
            shutil.copy2(path, copied)
            copied.chmod(0o755)
            return [str(copied)]
    return parts


def cert_sha256(apksigner: list[str], apk: Path) -> list[str]:
    p = run(apksigner + ["verify", "--print-certs", str(apk)],
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if p.returncode != 0:
        raise SystemExit(p.stdout)
    return [line.strip() for line in p.stdout.splitlines()
            if "certificate SHA-256 digest:" in line.lower()]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--base", required=True, type=Path, help="previous signed APK")
    ap.add_argument("--output", required=True, type=Path, help="new signed APK")
    ap.add_argument("--version-code", type=int, help="new versionCode (manifest + BuildConfig)")
    ap.add_argument("--buildconfig-dex", help="DEX containing BuildConfig (default: auto-detect)")
    ap.add_argument("--replace", action="append", default=[], metavar="DEST=SRC",
                    help="replace APK entry DEST with local file SRC; repeatable")
    ap.add_argument("--remove", action="append", default=[], metavar="DEST",
                    help="remove APK entry DEST; repeatable")
    ap.add_argument("--keystore", type=Path, help="signing keystore")
    ap.add_argument("--ks-alias", default="androiddebugkey")
    ap.add_argument("--ks-pass", default="android")
    ap.add_argument("--key-pass", default="android")
    ap.add_argument("--apksigner", default="apksigner")
    ap.add_argument("--zipalign", default="zipalign")
    ap.add_argument("--aapt", default="aapt", help="used for a versionCode sanity check")
    ap.add_argument("--no-sign", action="store_true", help="only produce the unsigned/aligned APK")
    ap.add_argument("--keep-temp", action="store_true")
    ap.add_argument("--unsigned-out", type=Path)
    ap.add_argument("--aligned-out", type=Path)
    args = ap.parse_args()

    base = args.base.resolve()
    output = args.output.resolve()
    if not base.is_file():
        raise SystemExit(f"base APK not found: {base}")
    output.parent.mkdir(parents=True, exist_ok=True)
    replacements = parse_replace(args.replace)
    removes = set(args.remove)
    tmpdir = Path(tempfile.mkdtemp(prefix="jiajiabox-update-"))
    unsigned = args.unsigned_out or (tmpdir / "unsigned.apk")
    aligned = args.aligned_out or (tmpdir / "aligned.apk")
    zipalign = resolve_tool(args.zipalign, tmpdir)
    apksigner = resolve_tool(args.apksigner, tmpdir)
    aapt = resolve_tool(args.aapt, tmpdir)

    with zipfile.ZipFile(base) as z:
        names = z.namelist()
        patch: dict[str, bytes] = {}
        for dest in replacements:
            if dest not in names:
                raise SystemExit(f"replacement target does not exist in base APK: {dest}")
        for dest in removes:
            if dest not in names:
                raise SystemExit(f"remove target does not exist in base APK: {dest}")

        if args.version_code is not None:
            manifest, old_manifest = patch_manifest_version(z.read("AndroidManifest.xml"), args.version_code)
            patch["AndroidManifest.xml"] = manifest
            print(f"manifest versionCode: {old_manifest} -> {args.version_code}")
            candidates = ([args.buildconfig_dex] if args.buildconfig_dex else
                          [n for n in names if re.fullmatch(r"classes\d*\.dex", n)])
            for name in candidates:
                result = patch_buildconfig_version(z.read(name), args.version_code)
                if result is not None:
                    data, old_build = result
                    patch[name] = data
                    print(f"BuildConfig VERSION_CODE in {name}: {old_build} -> {args.version_code}")
                    break
            else:
                raise SystemExit("BuildConfig VERSION_CODE not found in " + ", ".join(candidates))

        for dest, src in replacements.items():
            patch[dest] = src.read_bytes()
            print(f"replace {dest} <- {src} ({len(patch[dest])} bytes)")
        for dest in sorted(removes):
            print(f"remove {dest}")

        with zipfile.ZipFile(unsigned, "w") as out:
            written = set()
            for info in z.infolist():
                name = info.filename
                if name in removes:
                    continue
                if name.startswith("META-INF/") and (
                        name == "META-INF/MANIFEST.MF" or name.endswith((".RSA", ".DSA", ".EC", ".SF"))):
                    continue
                out.writestr(copy(info), patch.get(name, z.read(name)))
                written.add(name)

    if replacements.keys() - written:
        raise SystemExit("internal error: replacements not written")

    if run(zipalign + ["-p", "-f", "4", str(unsigned), str(aligned)]).returncode:
        raise SystemExit("zipalign failed")

    if args.no_sign:
        out = args.output
        out.write_bytes(aligned.read_bytes())
        print(f"unsigned APK: {out}")
        print("SHA-256:", hashlib.sha256(out.read_bytes()).hexdigest())
        return 0

    if not args.keystore:
        raise SystemExit("--keystore is required unless --no-sign is used")
    base_certs = cert_sha256(apksigner, base)
    if run(apksigner + ["sign", "--ks", str(args.keystore), "--ks-key-alias", args.ks_alias,
                        "--ks-pass", f"pass:{args.ks_pass}", "--key-pass", f"pass:{args.key_pass}",
                        "--v4-signing-enabled", "false",
                        "--out", str(output), str(aligned)]).returncode:
        raise SystemExit("apksigner sign failed")
    # apksigner otherwise writes <apk>.idsig next to the APK. Some OEM
    # installers treat that sidecar as an extra signature and reject the APK.
    idsig = Path(str(output) + ".idsig")
    if idsig.exists():
        idsig.unlink()
    if run(zipalign + ["-c", "4", str(output)]).returncode:
        raise SystemExit("zipalign check failed")
    new_certs = cert_sha256(apksigner, output)
    if new_certs != base_certs:
        raise SystemExit("signer certificate differs from base APK")
    print("signer certificate matches base APK")
    if args.version_code is not None:
        try:
            p = run(aapt + ["dump", "badging", str(output)],
                    stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, text=True)
            if p.returncode == 0 and f"versionCode='{args.version_code}'" not in p.stdout:
                raise SystemExit("versionCode sanity check failed")
        except OSError as exc:
            print(f"warning: aapt sanity check skipped: {exc}", file=sys.stderr)
    digest = hashlib.sha256(output.read_bytes()).hexdigest()
    print(f"signed APK: {output}")
    print("SHA-256:", digest)
    (output.with_name(output.name + ".sha256")).write_text(
        f"{digest}  {output.name}\n", encoding="utf-8")
    if not args.keep_temp:
        for p in (unsigned, aligned):
            p.unlink(missing_ok=True)
        shutil.rmtree(tmpdir, ignore_errors=True)
    return 0


if __name__ == "__main__":
    sys.exit(main())
