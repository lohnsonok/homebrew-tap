cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.16"
  sha256 arm:   "4148dc97acc70e47ea12659d76e40bc5988aae3bf45bc246afefe0997236bfb6",
         intel: "a9400ae176a727e26c0f20f91fcb4d84495aa90484d54f36190556bf679ab35e"

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
