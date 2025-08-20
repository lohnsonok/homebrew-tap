cask "mumood" do
  version "1.0.11"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "ccaa3bf850e0f3b71cc7865b453dc18ba6ddd28b45da7575d711390527295245",
         intel: "d5e1e6d37baf3b840dc55e88cf97f824112c9cfe739d97f3f0c905f322091664"

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
