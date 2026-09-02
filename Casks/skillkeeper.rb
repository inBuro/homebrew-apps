cask "skillkeeper" do
  version "1.0"
  sha256 "1c38c2e76fd25573fc1a7b704b2425f2999fa8928bf645ad2aff0eac63061998"

  url "https://github.com/inBuro/skillkeeper-releases/raw/main/SkillKeeper.dmg"
  name "SkillKeeper"
  desc "Menu bar app that shows how often your Claude Code skills get used"
  homepage "https://skillkeeper.app"

  livecheck do
    url "https://raw.githubusercontent.com/inBuro/skillkeeper-releases/main/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "SkillKeeper.app"

  zap trash: [
    "~/Library/LaunchAgents/brain.kirill.skillkeeper.plist",
    "~/Library/Preferences/brain.kirill.skillkeeper.plist",
  ]
end
