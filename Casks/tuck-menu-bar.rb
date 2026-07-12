cask "tuck-menu-bar" do
  version "1.0.24"
  sha256 "275f9a34457d172b740529108457a859ef3bddc8a8e1ef980e8443d5ba253518"

  url "https://github.com/QuartzInkStudio/Tuck/releases/download/v#{version}/Tuck-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Tuck/"
  name "Tuck"
  desc "Organize and hide menu bar icons"
  homepage "https://usetuck.com/"

  depends_on macos: :sonoma

  app "Tuck.app"

  zap trash: [
    "~/Library/Application Support/Tuck",
    "~/Library/Caches/com.tuckapp.Tuck",
    "~/Library/Preferences/com.tuckapp.Tuck.plist",
  ]
end
