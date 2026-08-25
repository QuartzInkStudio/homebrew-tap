cask "facet" do
  version "1.0.21"
  sha256 "8c4ab98ecf80b5c3b41f6c9b1e97a8ce9dcea4f5d1a314f5f9d062a641b97184"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
