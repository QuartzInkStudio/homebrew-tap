cask "facet" do
  version "1.0.26"
  sha256 "5f8ef5ec97ff8877123ff0d25a16375ee6d7809112e56e9cb37da2c2249f0e6a"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
