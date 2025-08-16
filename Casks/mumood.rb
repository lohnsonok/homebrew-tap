cask "mumood" do
  version "1.0.3"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "f4ddb49e79f9f13e9769cdc09215f9da56ea78386097a8666f066c1ed2333cc7",
         intel: "91199205a1c51c16ff2e1716a1b8551e61bf77ce86700e4cba1f833f54a0ce15"

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
