cask "tuck-menu-bar" do
  version "1.0.41,48"
  sha256 "beb6a2460e880695441abfb5a665494c50356e753ca7b8bffdd5a6893e8b3228"

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
