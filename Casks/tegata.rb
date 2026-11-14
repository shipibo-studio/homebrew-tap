cask "tegata" do
  version "0.1.1"
  sha256 "cc75fadcd61a5321b10d85eed8e0d24b07a82dbc4e92a383ec3266b578b4eda2"

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
    After an upgrade, run once:    tegata watch install
  EOS
end
