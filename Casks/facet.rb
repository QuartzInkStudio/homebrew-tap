cask "facet" do
  version "1.0.25"
  sha256 "f8d227e8db3254332316b1f942099d335b14bc47a9c074619dcf1e52f2c74933"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
