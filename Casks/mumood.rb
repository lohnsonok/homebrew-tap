cask "mumood" do
  version "1.0.12"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "56a63805ad01ba4bf10c3a290c8e4ee8495e758ff0c1921c49c6a67b5cc52271",
         intel: "1d42bbb79405c7f9b053c11bd6b2a15ff6d707d3b35629dc394b8fd15ff764bc"

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
