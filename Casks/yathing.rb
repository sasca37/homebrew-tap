cask "yathing" do
  version "1.0.1"
  sha256 "585d224eb8cde770de82751e7e905d6a5c5f3a000093ba8704c03ee31249fa83"

  url "https://github.com/sasca37/yathing/releases/download/v#{version}/yathing-#{version}.dmg"
  name "yathing"
  desc "Use a Windows keyboard on macOS: Ctrl+C, Alt+Tab, Korean/English key"
  homepage "https://github.com/sasca37/yathing"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "yathing.app"

  zap trash: [
    "~/Library/Preferences/com.sasca37.yathing.plist",
  ]
end
