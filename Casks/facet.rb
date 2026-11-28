cask "facet" do
  version "1.2.0"
  sha256 "cdf3ff89eff7936f860fb73af41749fb4ee0251f83ea1758576d40b7d1c29af2"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
