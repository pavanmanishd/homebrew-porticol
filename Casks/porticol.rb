# Written by release/homebrew/bump.sh; change that script, not this file.
cask "porticol" do
  version "0.2.0"
  sha256 "3272fd82147dff8ef755af13dff78dd3e1d8c34b7c7055e6a178e04389b19523"

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
