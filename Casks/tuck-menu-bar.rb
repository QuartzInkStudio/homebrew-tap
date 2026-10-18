cask "tuck-menu-bar" do
  version "1.3.6,107"
  sha256 "445d94bb01af1f3133cbf0eb9431f7832a3c32a6890a75d0e3ff7dfb9ff5bff2"

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
