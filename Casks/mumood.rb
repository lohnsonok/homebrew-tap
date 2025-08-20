cask "mumood" do
  version "1.0.9"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "53ab03c23634050cb03def439f5c332a90a3b970826984e8a6ffe105df32a271",
         intel: "a64d7de3e7edfb22f05b562dbf9aa072bb3a9b88a0b6d9d7c2536fd253324896"

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
