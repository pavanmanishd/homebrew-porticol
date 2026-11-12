# Written by release/homebrew/bump.sh; change that script, not this file.
cask "porticol" do
  version "0.4.1"
  sha256 "ad342ea5f67332e10773e1a41381c40c54c100b34d036cac9776bca5d0f3e53e"

  url "https://updates.porticol.app/#{version}/Porticol.app.tar.gz"
  name "Porticol"
  desc "Native API client with an MCP server for coding agents"
  homepage "https://porticol.app/"

  app "Porticol.app"

  auto_updates true

  # Porticol is not notarised yet, so Gatekeeper refuses a quarantined copy on first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Porticol.app"]
  end

  uninstall quit: "com.porticol.desktop"

  zap trash: [
    "~/Library/Application Support/com.porticol.desktop",
    "~/Library/Caches/com.porticol.desktop",
    "~/Library/Preferences/com.porticol.desktop.plist",
    "~/Library/Saved Application State/com.porticol.desktop.savedState",
  ]
end
