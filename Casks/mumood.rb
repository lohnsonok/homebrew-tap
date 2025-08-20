cask "mumood" do
  version "1.0.10"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "5a63dcb648f563d17870c54b5029519142d2b25a63625ac370231017a68219fd",
         intel: "8f4a68babb8317c0685239c63016ca5f9280c84c0b4d7bdae4a57dd25395422f"

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
