cask "facet" do
  version "1.0.23"
  sha256 "1f23e18154d00c9a5cd54a77084799ce1c5f9f07ba3de4d5c610eba8e76f92d6"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
