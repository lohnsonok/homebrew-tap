cask "mumood" do
  version "1.0.6"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "646aad5c8d2d7e3902c153debb1abe6184f733f112a8553188fc69b39200381d",
         intel: "2f6590e3c781ee4945131e6eec281d1355eab4698b70c51f5fde121e5331752d"

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
