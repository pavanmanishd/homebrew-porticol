# Written by release/homebrew/bump.sh; change that script, not this file.
class PorticolCli < Formula
  desc "Let coding agents call your APIs without the keys, and run collections in CI"
  homepage "https://porticol.app/"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    url "https://updates.porticol.app/#{version}/porticol-cli-0.4.1-macos-universal.tar.gz"
    sha256 "ace7af3473376e39c0d5d83f49eeaef5c68556d09dbf033e382f99b5cdffd55d"
  end
  on_linux do
    on_intel do
      url "https://updates.porticol.app/#{version}/porticol-cli-0.4.1-linux-x64.tar.gz"
      sha256 "4ca231182ac5481573737f8682b508c2e8fcf167216f76756eedebcf7d598b01"
    end
  end

  def install
    bin.install "porticol-cli"
  end

  test do
    assert_match "porticol-cli #{version}", shell_output("#{bin}/porticol-cli version")
  end
end
