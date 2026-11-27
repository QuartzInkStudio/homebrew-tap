cask "facet" do
  version "1.1.0"
  sha256 "afbe994d118139ce33b917d250adc70b09037c7532255c0586c4c9c818aecb64"

  url "https://github.com/QuartzInkStudio/Facet/releases/download/v#{version}/Facet-#{version}.dmg"
  name "Facet"
  desc "Visual app launcher and classic Launchpad replacement"
  homepage "https://facetlauncher.com/"

  depends_on macos: :sonoma

  app "Facet.app"
end
