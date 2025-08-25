cask "mumood" do
  version "1.0.13"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "2b73144521284db26e2eb400582416ea86e45c16833ce60626dd4ce2fb169939",
         intel: "e53d11cd396477f6fbe1b5280e2ccdffbd79495729282b7807105fb88c5fd963"

  url "https://mumood.com/api/download?arch=#{arch}&tag=v#{version}",
      verified: "mumood.com"
  name "MuMood"
  desc "Wallpaper engine that adapts to your music (Apple Music/Spotify)"
  homepage "https://mumood.com"

  livecheck do
    skip "Updates announced on https://mumood.com"
  end

  depends_on macos: ">= :sonoma"

  app "MuMood.app"

  zap trash: [
    "~/Library/Preferences/com.mumood.app.plist",
    "~/Library/Caches/com.mumood.app",
    "~/Library/Saved Application State/com.mumood.app.savedState",
  ]
end
