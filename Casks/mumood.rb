cask "mumood" do
  version "1.0.8"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "a3d37f2f439e66520cd94854bdb40b2299a229694e22a272f378fdabc02c2a84",
         intel: "536d9fbd758e8ec1a921aaea93e0e389c56a1a30945d8d150c1d4a42b3bbfc6f"

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
