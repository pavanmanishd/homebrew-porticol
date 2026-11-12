# Written by release/homebrew/bump.sh; change that script, not this file.
class PorticolCli < Formula
  desc "Let coding agents call your APIs without the keys, and run collections in CI"
  homepage "https://porticol.app/"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    url "https://updates.porticol.app/#{version}/porticol-cli-0.4.2-macos-universal.tar.gz"
    sha256 "d9dfb7a8c8285128e61e3e404f70f3941c5530bca03610e548a2aa112199e456"
  end
  on_linux do
    on_intel do
      url "https://updates.porticol.app/#{version}/porticol-cli-0.4.2-linux-x64.tar.gz"
      sha256 "7039e592d262d1013750cc9e93295d465531240dd46935a01bf05c51ae57d546"
    end
  end

  def install
    bin.install "porticol-cli"
  end

  test do
    assert_match "porticol-cli #{version}", shell_output("#{bin}/porticol-cli version")
  end
end
