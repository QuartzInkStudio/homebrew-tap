cask "facet" do
  version "1.0.19"
  sha256 "cf04e7142ce07a054a9d3fee8dcf5d51860b422f24692a56f1104e330dbc0c91"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
