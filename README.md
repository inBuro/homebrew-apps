# inBuro Homebrew tap

Homebrew casks for apps by [Kirill Bush](https://in-buro.com).

## SkillKeeper

A macOS menu bar app that shows which of your Claude Code skills actually fire and lets you tune their triggers inline. Site: [skillkeeper.app](https://skillkeeper.app).

```
brew tap inBuro/apps
brew install --cask skillkeeper
```

Requires macOS 13 Ventura or later. The cask downloads the notarized disk image from [inBuro/skillkeeper-releases](https://github.com/inBuro/skillkeeper-releases); the app then keeps itself up to date via Sparkle.
