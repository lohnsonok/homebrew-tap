cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.19"
  sha256 arm:   "bf9762f22454c682961786864d288974e21e81bc9bbc4148755d6d7cd5035287",
         intel: "7604102e5ed8892f695f3495c08883006c7845a8f40403aa1a49810d9ec27782"

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
