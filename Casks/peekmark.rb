cask "peekmark" do
  version "1.2"
  sha256 "32671850f1268e0f934ebf3f83061ecaeda45291c019be6044eb0afe597d39da"

  url "https://github.com/QuartzInkStudio/PeekMark/releases/download/v#{version}/PeekMark-#{version}.dmg"
  name "PeekMark"
  desc "Local-first Markdown previewer with Finder Quick Look"
  homepage "https://peekmark.app/"

  depends_on macos: :sonoma

  app "PeekMark.app"
end
