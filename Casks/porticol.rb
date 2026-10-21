# Written by release/homebrew/bump.sh; change that script, not this file.
cask "porticol" do
  version "0.1.0"
  sha256 "1f38d32ebbdfe4b6080b0c82978bf1ec64abd0829d1b4e5a858126cca7df4901"

  url "https://updates.porticol.app/#{version}/Porticol.app.tar.gz"
  name "Porticol"
  desc "Native API client with an MCP server for coding agents"
  homepage "https://porticol.app/"

  app "Porticol.app"
end
