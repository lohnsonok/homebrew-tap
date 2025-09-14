cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.17"
  sha256 arm:   "f8f20aa13b47f2571f1b45acf8c47069064a4a49b8d2db51ddba0c7a96bf03b9",
         intel: "1ed5edb78ab5a852d96111836b1fe9637bdbe3b7c794a757fc5a6341788d23a6"

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
