cask "cherry-cli" do
  version "1.2.1"
  sha256 "5e12b753ec4c9515166a515cdc37927f438b7c0c73121b98698ac2f5285c544c"

  url "https://github.com/0xfeedface1993/cherry-utility-mac/releases/download/v#{version}/cherry-#{version}.zip"
  name "CHERRY Utility CLI"
  desc "Command-line tool for configuring CHERRY keyboards"
  homepage "https://odeployer.online/cherry-utility/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  binary "cherry"
end
