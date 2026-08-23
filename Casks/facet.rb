cask "facet" do
  version "1.0.17"
  sha256 "61e5f85bf9618095c987ac7dffaa0b1c1737beb7106cd14d74399e04f6690426"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
