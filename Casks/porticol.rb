# Written by release/homebrew/bump.sh; change that script, not this file.
cask "porticol" do
  version "0.4.0"
  sha256 "044ff97c4b021b3bf6f884eb3911cb4cf3f46154ab300202c5281abff48d9778"

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
