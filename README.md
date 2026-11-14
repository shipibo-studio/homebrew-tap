# Shipibo Studio Homebrew tap

Casks for [Shipibo Studio](https://github.com/shipibo-studio) apps.

```sh
brew trust --cask shipibo-studio/tap/tegata
brew install --cask shipibo-studio/tap/tegata
```

Homebrew 7 loads casks from taps outside Homebrew's own only after you trust them. Trusting one cask (as above) is narrower than trusting the whole tap.

| Cask | What it is |
| --- | --- |
| [`tegata`](Casks/tegata.rb) | [Tegata](https://github.com/shipibo-studio/Tegata): a checkpoint for your AI coding agents. See what they load and run, find the secrets they copied, fix both, and be told when something changes. |

Every app here is signed with Developer ID and notarized by Apple; Homebrew checks each download against the `sha256` in its cask. Report problems with a cask in this repository, and problems with an app in that app's repository.
