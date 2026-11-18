cask "tuck-menu-bar" do
  version "1.5.5,302"
  sha256 "380baada45f0acbbaa1bde061ce47fb713476f6955de1e35662ef104714befe7"

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
