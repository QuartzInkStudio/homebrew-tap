cask "facet" do
  version "1.0.24"
  sha256 "0d82fcf83e41c69c98812e92f9cab2c2ae357b089ae9a827dea5375520fa2637"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
