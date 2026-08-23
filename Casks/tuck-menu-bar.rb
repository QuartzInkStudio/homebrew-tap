cask "tuck-menu-bar" do
  version "1.0.36,43"
  sha256 "b2ad1e68fb28a8b8f66a0c18cf123bec7d1f7a0b535de371fe8bae1e8058a512"

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
