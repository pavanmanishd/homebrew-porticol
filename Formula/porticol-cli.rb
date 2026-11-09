# Written by release/homebrew/bump.sh; change that script, not this file.
class PorticolCli < Formula
  desc "Let coding agents call your APIs without the keys, and run collections in CI"
  homepage "https://porticol.app/"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    url "https://updates.porticol.app/#{version}/porticol-cli-0.3.0-macos-universal.tar.gz"
    sha256 "8f8d598b7f918f7073c4fbedb4c5bc71bea1cef665e0d1a7864c76205ee1a096"
  end
  on_linux do
    on_intel do
      url "https://updates.porticol.app/#{version}/porticol-cli-0.3.0-linux-x64.tar.gz"
      sha256 "1f10d3e718810de2243040629a2463c099ca6f91faa61873080301eb33dfca31"
    end
  end

  def install
    bin.install "porticol-cli"
  end

  test do
    assert_match "porticol-cli #{version}", shell_output("#{bin}/porticol-cli version")
  end
end
