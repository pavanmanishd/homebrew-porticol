# Written by release/homebrew/bump.sh; change that script, not this file.
cask "porticol" do
  version "0.4.2"
  sha256 "335643f80f7d3b379f2a0941772e11ad8d00b8a03ef29dc80ecdbca718467afc"

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
