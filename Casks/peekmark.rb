cask "peekmark" do
  version "1.1"
  sha256 "8962a9e69cc5782487907b7f22499e1f5f73dd862ea82b635ca5fbbce9cb5fdc"

  url "https://github.com/QuartzInkStudio/PeekMark/releases/download/v#{version}/PeekMark-#{version}.dmg"
  name "PeekMark"
  desc "Local-first Markdown previewer with Finder Quick Look"
  homepage "https://peekmark.app/"

  depends_on macos: :sonoma

  app "PeekMark.app"
end
