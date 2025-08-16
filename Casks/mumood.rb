cask "mumood" do
  version "1.0.4"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "0295b886c562a11d12e703042135a401c3f3df1d30c525353263d2785da749be",
         intel: "fe671398c1519c863bfe5bd350977e50ed5bebc6fc888f04a12e26f9208ea41f"

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
