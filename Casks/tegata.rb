cask "tegata" do
  version "0.2.2"
  sha256 "715c067944e59b0b2096fbf0c2d5cd6b5cdd6bb300902ea4144289a9b0ab7426"

  url "https://github.com/shipibo-studio/Tegata/releases/download/v#{version}/tegata-cli-#{version}-macos.zip"
  name "Tegata"
  desc "Checkpoint for AI coding agents: what they run and which secrets they copied"
  homepage "https://github.com/shipibo-studio/Tegata"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Tegata CLI.app"
  # Launched through this link, the command keeps the signed bundle's keychain access group.
  binary "#{appdir}/Tegata CLI.app/Contents/MacOS/tegata"

  uninstall launchctl: "app.tegata.cli-watch"

  zap trash: "~/Library/Application Support/Tegata CLI"

  caveats <<~EOS
    Start with a read-only look:   tegata scan
    Watch in the background:       tegata watch install && tegata watch establish
    After an upgrade, the next tegata command turns the watcher back on.
  EOS
end
