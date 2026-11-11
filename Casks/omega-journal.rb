cask "omega-journal" do
  version "1.2.0"
  sha256 "529ad65016c4535cc9d1a88ee3f924b594c5c31c1212c2bea7c9f57ad226f542"

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
