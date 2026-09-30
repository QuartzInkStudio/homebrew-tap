cask "tuck-menu-bar" do
  version "1.1.3,83"
  sha256 "43ecc04159279333244a30400cdd2845f751f78ee93cdb698ea53807773d59f2"

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
