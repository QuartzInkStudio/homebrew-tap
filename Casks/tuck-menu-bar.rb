cask "tuck-menu-bar" do
  version "1.4.12,241"
  sha256 "b9eb3967f94cd4823c36940364bd052b667c9abfc30b273bae9522b8b6aaa4b2"

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
