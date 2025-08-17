cask "mumood" do
  version "1.0.7"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "cfe49ab2148117240168dc1cab08068b8a83d0e817cefcb360a0f49e4fa0910b",
         intel: "42073604e698ff0580b183ef1895e7278d27a6b1675d3ac2b09ff03846cc3e06"

  url "https://mumood.com/api/download?arch=#{arch}&tag=v#{version}",
      verified: "mumood.com"
  name "MuMood"
  desc "Wallpaper engine that adapts to your music (Apple Music/Spotify)"
  homepage "https://mumood.com"

  livecheck do
    skip "Updates announced on https://mumood.com"
  end

  depends_on macos: ">= :ventura"

  app "MuMood.app"

  zap trash: [
    "~/Library/Preferences/com.mumood.app.plist",
    "~/Library/Caches/com.mumood.app",
    "~/Library/Saved Application State/com.mumood.app.savedState",
  ]
end
