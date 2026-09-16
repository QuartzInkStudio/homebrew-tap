"""No-network regression coverage for accepted release artifact names."""
import importlib.util
from pathlib import Path
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location("updater", Path(__file__).with_name("update-tuck-cask.py"))
updater = importlib.util.module_from_spec(spec)
spec.loader.exec_module(updater)


class ReleaseNames(unittest.TestCase):
    def run_sync(self, url):
        feed = f'''<rss xmlns:sparkle="{updater.SPARKLE_NS}"><channel><item>
        <sparkle:shortVersionString>1.0.51</sparkle:shortVersionString>
        <sparkle:version>71</sparkle:version><enclosure url="{url}" length="3" />
        </item></channel></rss>'''.encode()
        old = '  version "1.0.47,54"\n  sha256 "' + '0' * 64 + '\"\n  url "https://usetuck.com/old.dmg"\n'
        with patch.object(updater, "download", side_effect=[feed, b"dmg"]), \
             patch.object(Path, "read_text", return_value=old), \
             patch.object(Path, "write_text") as write:
            updater.main()
            return write.call_args.args[0]

    def test_version_only(self):
        result = self.run_sync("https://usetuck.com/download/Tuck-1.0.51.dmg")
        self.assertIn('version "1.0.51,71"', result)
        self.assertIn('url "https://usetuck.com/Tuck-#{version.csv.first}.dmg"', result)

    def test_build_suffix(self):
        result = self.run_sync("https://usetuck.com/download/Tuck-1.0.51-build71.dmg")
        self.assertIn('url "https://usetuck.com/Tuck-#{version.csv.first}-build#{version.csv.second}.dmg"', result)

    def test_untrusted_or_mismatched_artifact(self):
        for url in ["https://example.com/Tuck-1.0.51.dmg", "https://usetuck.com/download/Tuck-1.0.50.dmg"]:
            with self.subTest(url=url), self.assertRaisesRegex(RuntimeError, "URL mismatch"):
                self.run_sync(url)


if __name__ == "__main__":
    unittest.main()
