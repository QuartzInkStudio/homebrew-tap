cask "peekmark" do
  version "1.0.0"
  sha256 "b282c8b1419e3edb2c569ec21d31d51820918b59eccfea87a8b0fe920b00fede"

  url "https://github.com/QuartzInkStudio/PeekMark/releases/download/v#{version}/PeekMark-#{version}.dmg",
      verified: "github.com/QuartzInkStudio/PeekMark/"
  name "PeekMark"
  desc "Local-first Markdown previewer with Finder Quick Look"
  homepage "https://peekmark.quartz.ink/"

  depends_on macos: :sonoma

  app "PeekMark.app"
end
