cask "facet" do
  version "1.0.30"
  sha256 "1802d22fbe7c0e86415d3a76852c6a3810ed9f6a0f84d9eec643ee8c1e096540"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
