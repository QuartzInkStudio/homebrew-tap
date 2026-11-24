cask "tuck-menu-bar" do
  version "1.6.1,324"
  sha256 "79a709789fb5337207ef2df7ce541cf8aa5d46459b50f485ea6d7c5940327e73"

  url "https://usetuck.com/Tuck-#{version.csv.first}.dmg"
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
