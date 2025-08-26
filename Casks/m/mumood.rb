cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.15"
  sha256 arm:   "9a62f92f79634e79bfcb018a9efab016e7c813e1244bf17474b123951849689c",
         intel: "273c6e799516ce38cb8ecee0d4ed08794c8c59c16deaebeab67b5acad8e0fa5f"

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
