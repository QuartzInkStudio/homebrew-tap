cask "facet" do
  version "1.0.28"
  sha256 "feedbb83b9c318e05ff31f47f209230980e1a989b8cbbce993d32722cfd27262"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
