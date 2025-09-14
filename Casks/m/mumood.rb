cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.18"
  sha256 arm:   "c4a0f510f18b60961a9485967eb7a34939cecad593c419592e27d5290f171d0c",
         intel: "84718d5708f882f1fd455f6736cbfaf2d777ce6805dfccf78a48a707947b873e"

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
