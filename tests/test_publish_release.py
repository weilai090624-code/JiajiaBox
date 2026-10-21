"""Verify recovery after a server accepts an upload but drops its response."""
import contextlib
import hashlib
import http.client
import importlib.util
import io
import json
import tempfile
import unittest
import urllib.error
from pathlib import Path
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("publish_release", ROOT / "tools/publish_release.py")
PUBLISH = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(PUBLISH)


class GitHub:
    def __init__(self):
        self.release = None
        self.creations = 0
        self.uploads = 0

    def open(self, request, timeout):
        url, method = request.full_url, request.get_method()
        if "/git/ref/tags/" in url:
            result = {"object": {"type": "commit", "sha": "source-commit"}}
        elif "/releases/tags/" in url:
            # Deliberately simulate the tag endpoint not returning a draft.
            raise urllib.error.HTTPError(url, 404, "Not Found", {}, io.BytesIO(b'{}'))
        elif url.endswith("/releases?per_page=100"):
            result = [self.release] if self.release else []
        elif url.endswith("/releases") and method == "POST":
            self.creations += 1
            self.release = {"id": 42, "tag_name": "v308", "draft": True,
                            "html_url": "https://github.com/owner/repo/releases/tag/v308",
                            "upload_url": "https://uploads.github.com/repos/owner/repo/releases/42/assets{?name,label}",
                            "assets": []}
            result = self.release
        elif "uploads.github.com/" in url:
            self.uploads += 1
            data = request.data.read()
            self.release["assets"].append({"name": "tested.apk", "id": 7, "size": len(data),
                                           "state": "uploaded", "digest": "sha256:" + hashlib.sha256(data).hexdigest(),
                                           "browser_download_url": "https://example.test/tested.apk"})
            raise http.client.RemoteDisconnected("accepted, then connection closed")
        elif url.endswith("/releases/42"):
            if method == "PATCH":
                self.release["draft"] = json.loads(request.data)["draft"]
            result = self.release
        else:
            raise AssertionError((method, url))
        return contextlib.closing(io.StringIO(json.dumps(result)))


class PublicationTest(unittest.TestCase):
    def test_resume_after_upload_response_is_lost(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            asset = root / "tested.apk"
            asset.write_bytes(b"the exact tested APK")
            notes = root / "notes.md"
            notes.write_text("Approved after local testing")
            checkpoint = root / "publication.json"
            argv = ["publish_release.py", "--repo", "owner/repo", "--tag", "v308",
                    "--commit", "source-commit", "--title", "308", "--notes-file", str(notes),
                    "--asset", str(asset), "--output-json", str(checkpoint)]
            remote = GitHub()
            with patch.dict("os.environ", {"GH_TOKEN": "test-only"}), patch("sys.argv", argv), \
                    patch.object(PUBLISH.urllib.request, "build_opener", return_value=remote), \
                    contextlib.redirect_stdout(io.StringIO()):
                with self.assertRaises(http.client.RemoteDisconnected):
                    PUBLISH.main()
                self.assertEqual(json.loads(checkpoint.read_text())["release_id"], 42)
                self.assertTrue(remote.release["draft"])
                PUBLISH.main()
            self.assertEqual((remote.creations, remote.uploads), (1, 1))
            self.assertFalse(remote.release["draft"])
            self.assertFalse(json.loads(checkpoint.read_text())["draft"])

    def test_explicit_release_id_rejects_a_different_tag(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            asset, notes = root / "tested.apk", root / "notes.md"
            asset.write_bytes(b"APK")
            notes.write_text("Notes")
            remote = GitHub()
            remote.release = {"tag_name": "another-version"}
            argv = ["publish_release.py", "--repo", "owner/repo", "--tag", "v308",
                    "--commit", "source-commit", "--title", "308", "--notes-file", str(notes),
                    "--asset", str(asset), "--release-id", "42"]
            with patch.dict("os.environ", {"GH_TOKEN": "test-only"}), patch("sys.argv", argv), \
                    patch.object(PUBLISH.urllib.request, "build_opener", return_value=remote):
                with self.assertRaisesRegex(RuntimeError, "does not match"):
                    PUBLISH.main()
            self.assertEqual(remote.uploads, 0)


if __name__ == "__main__":
    unittest.main()
