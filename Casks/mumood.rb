cask "mumood" do
  version "1.0.5"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "1e3a0820af4b3cbe6e4bdc25034ef349189503eca9164ec3614a053eb5087fb7",
         intel: "fe6b8af1f060a18dfac8c6bd4dd42b892b996bae2ccacce84f53b8f6825b0574"

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
