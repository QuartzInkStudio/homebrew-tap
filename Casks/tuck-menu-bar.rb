cask "tuck-menu-bar" do
  version "1.0.47,54"
  sha256 "9cabe47d4c63cb82e9efee0e3c517b98909809227e8b339a764100e91889aba0"

  url "https://usetuck.com/Tuck-#{version.csv.first}-build#{version.csv.second}.dmg"
  name "Tuck"
  desc "Organize and hide menu bar icons"
  homepage "https://usetuck.com/"

  livecheck do
    url "https://usetuck.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "Tuck.app"

  zap trash: [
    "~/Library/Application Support/Tuck",
    "~/Library/Caches/com.tuckapp.Tuck",
    "~/Library/Preferences/com.tuckapp.Tuck.plist",
  ]
end
