cask "facet" do
  version "1.3.0"
  sha256 "68c7eb495a93e4d1b436cb86f75370dfc5b6fc9de8540ae7abe18ff205ee4bb0"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
