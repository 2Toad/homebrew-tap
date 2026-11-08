# Rendered by the antfarm release workflow from packaging/homebrew in 2Toad/antfarm.
# Edit the template there, not this file.
cask "antfarm" do
  version "0.1.0"
  sha256 "a08377a200e16b981a34475dbb6f476889f9685e478ebadd9cdb7f6fcdd6409e"

  url "https://github.com/2Toad/antfarm/releases/download/v#{version}/antfarm-#{version}-macos-universal.dmg"
  name "antfarm"
  desc "Live view of what Claude Code agents on your machine are doing"
  homepage "https://github.com/2Toad/antfarm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "antfarm.app"

  zap trash: [
    "~/Library/Caches/com.2toad.antfarm",
    "~/Library/Preferences/com.2toad.antfarm.plist",
    "~/Library/Saved Application State/com.2toad.antfarm.savedState",
    "~/Library/WebKit/com.2toad.antfarm",
  ]
end
