cask "facet" do
  version "1.0.31"
  sha256 "f11c3564ad8193f37d9ba915e73e165c0bc2a175367287a679e2c32108e55d9a"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
