cask "facet" do
  version "1.0.27"
  sha256 "9cc72849dd8bf0e5903651da0287facf62e5a8640b0989ffb6276cd1013149f2"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
