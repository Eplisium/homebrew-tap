cask "omega-journal" do
  version "1.1.0"
  sha256 "268eea4238f58b0a70e1159bd3e705d27c69debeed1b2268dd56dc7968470495"

  url "https://github.com/Eplisium/omega-journal/releases/download/v#{version}/Omega-Journal-#{version}.dmg"
  name "Omega Journal"
  desc "Private, encrypted journal"
  homepage "https://github.com/Eplisium/omega-journal"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Omega Journal.app"

  # `brew uninstall --zap` deletes your journal. Back it up first.
  zap trash: [
    "~/Library/Application Support/OmegaJournal",
    "~/Library/Group Containers/WWC5HJN6AL.com.eplisium.omega-journal",
    "~/Library/Preferences/com.eplisium.omega-journal.plist",
    "~/Library/Saved Application State/com.eplisium.omega-journal.savedState",
  ]
end
