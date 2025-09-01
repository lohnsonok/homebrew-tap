cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.16"
  sha256 arm:   "24565c2bb8f83d427abddc1701c40f00ab02735583f7b74da0bc433bf7157030",
         intel: "55551b5cd54f6301e2498cee3f5adbe2c22da08af2bf25f8ae84d486e879ab04"

  url "https://mumood.com/api/download?arch=#{arch}&tag=v#{version.csv.first}"
  name "MuMood"
  desc "Wallpaper engine that adapts to your music (Apple Music/Spotify)"
  homepage "https://mumood.com/"

  livecheck do
    url "https://mumood.com/api/appcast"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "MuMood.app"

  zap trash: [
    "~/Library/Caches/com.mumood.app",
    "~/Library/Preferences/com.mumood.app.plist",
    "~/Library/Saved Application State/com.mumood.app.savedState",
  ]
end
