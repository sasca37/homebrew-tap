cask "yathing" do
  version "1.0.0"
  sha256 "a509764223acc3a5f029ddd576096df3b1afb6743fed8a5edc9682dd63b06f4f"

  url "https://github.com/sasca37/yathing/releases/download/v#{version}/yathing-#{version}.dmg"
  name "yathing"
  desc "Use a Windows keyboard on macOS: Ctrl+C, Alt+Tab, Korean/English key"
  homepage "https://github.com/sasca37/yathing"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "yathing.app"

  zap trash: [
    "~/Library/Preferences/com.sasca37.yathing.plist",
  ]
end
