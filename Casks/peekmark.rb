cask "peekmark" do
  version "1.0.1"
  sha256 "d6e785522aaf0e42e56866619cc1f169e45f99f935f634f67b0a490c413f2f18"

  url "https://github.com/QuartzInkStudio/PeekMark/releases/download/v#{version}/PeekMark-#{version}.dmg"
  name "PeekMark"
  desc "Local-first Markdown previewer with Finder Quick Look"
  homepage "https://peekmark.app/"

  depends_on macos: :sonoma

  app "PeekMark.app"
end
