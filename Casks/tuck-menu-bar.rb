cask "tuck-menu-bar" do
  version "1.0.38,45"
  sha256 "18fbc406c8668ab4f3a304e8df80e21e5b571485c68a494d799a299abba692d0"

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
