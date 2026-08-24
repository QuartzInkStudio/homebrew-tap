cask "facet" do
  version "1.0.18"
  sha256 "4547f304dd0957c77c467eae60fa7a878877eefb2cf0fdcdffa3769462c25cf2"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
