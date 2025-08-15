cask "mumood" do
  version "1.0.2"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "1f4603867b8bdd9428fc41a7159fc1279da9cfdf1f4affbac107c4785b6813b3",
         intel: "3a26a9bbf3fa4c49cd2192d90171794fb9344b4faf544688d0913700269fd3f2"

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
