cask "facet" do
  version "1.0.29"
  sha256 "9e940b803cb185429dc34e5f3a9addac1732b3737f7eb88b08f89e7b7bc9d4ea"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
