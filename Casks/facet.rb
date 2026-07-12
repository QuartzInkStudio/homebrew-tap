cask "facet" do
  version "1.0.13"
  sha256 "9a45331d0e95849898b61bb482093207f93894392b174fe5e845da7aac226c15"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/Facet/"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facet.quartz.ink/"

  depends_on macos: :sonoma

  app "Facet.app"
end
