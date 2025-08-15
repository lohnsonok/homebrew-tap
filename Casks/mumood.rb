cask "mumood" do
  version "1.0.0"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "cb8b7d9e1e78fc42875849336159aeedb2efa8b079f195efe93c56ccab770bf9",
         intel: "45e4a88638a3f4b4edcd04f68b24fde6a991eeaad19787fb3a305777524fb0d7"

  url "https://mumood.app/api/download?arch=#{arch}&tag=v#{version}",
      verified: "mumood.app"
  name "MuMood"
  desc "Wallpaper engine that adapts to your music (Apple Music/Spotify)"
  homepage "https://mumood.app"

  livecheck do
    skip "Updates announced on https://mumood.app"
  end

  depends_on macos: ">= :ventura"

  app "MuMood.app"

  zap trash: [
    "~/Library/Preferences/com.mumood.app.plist",
    "~/Library/Caches/com.mumood.app",
    "~/Library/Saved Application State/com.mumood.app.savedState",
  ]
end
