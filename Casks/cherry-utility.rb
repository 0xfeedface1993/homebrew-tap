cask "cherry-utility" do
  version "1.2.1"
  sha256 "a3ba7b7f953c42ba3303c2808eb4ecf351efa24485dae00b41dab112601fbfda"

  url "https://github.com/0xfeedface1993/cherry-utility-mac/releases/download/v#{version}/CherryUtility-#{version}.dmg"
  name "CHERRY Utility"
  desc "Unofficial configuration tool for CHERRY keyboards"
  homepage "https://odeployer.online/cherry-utility/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CherryUtility.app"

  zap trash: [
    "~/Library/Application Support/CherryUtility",
    "~/Library/Caches/online.odeployer.CherryUtility",
    "~/Library/HTTPStorages/online.odeployer.CherryUtility",
    "~/Library/HTTPStorages/online.odeployer.CherryUtility.binarycookies",
    "~/Library/Preferences/online.odeployer.CherryUtility.plist",
    "~/Library/Saved Application State/online.odeployer.CherryUtility.savedState",
    "~/Library/WebKit/online.odeployer.CherryUtility",
  ]
end
