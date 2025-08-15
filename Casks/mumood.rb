cask "mumood" do
  version "1.0.1"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "36c76684bee6f8fb7ba3047a0885f9fc88b4b3560d4698563e880f08199a3d6e",
         intel: "a7cc6ecc701bd913766099958f8364aad1e7fd73112b83c7eae9e825d86bedae"

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
