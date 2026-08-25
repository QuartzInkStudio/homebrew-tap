cask "facet" do
  version "1.0.20"
  sha256 "5df927bf48323d73c94e2bdbc7e132108d5db73c38e251c0f75b56e9c56789e9"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
