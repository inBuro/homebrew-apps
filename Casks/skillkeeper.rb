cask "skillkeeper" do
  version "1.6.1"
  # skillkeeper-releases keeps one overwritten SkillKeeper.dmg on `main` per
  # release (same flat layout Sparkle's own appcast.xml already relies on,
  # see inBuro/skillkeeper-releases/README.md) rather than a per-version
  # tagged URL — `brew audit` flags a fixed sha256 against an unversioned
  # URL as unreliable, :no_check is its own recommended fix for this shape.
  sha256 :no_check

  url "https://github.com/inBuro/skillkeeper-releases/raw/main/SkillKeeper.dmg"
  name "SkillKeeper"
  desc "Menu bar app that shows how often your Claude Code skills get used"
  homepage "https://skillkeeper.app/"

  livecheck do
    url "https://raw.githubusercontent.com/inBuro/skillkeeper-releases/main/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  app "SkillKeeper.app"

  zap trash: [
    "~/Library/LaunchAgents/brain.kirill.skillkeeper.plist",
    "~/Library/Preferences/brain.kirill.skillkeeper.plist",
  ]
end
