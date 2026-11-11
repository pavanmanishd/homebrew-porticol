# Written by release/homebrew/bump.sh; change that script, not this file.
class PorticolCli < Formula
  desc "Let coding agents call your APIs without the keys, and run collections in CI"
  homepage "https://porticol.app/"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    url "https://updates.porticol.app/#{version}/porticol-cli-0.4.0-macos-universal.tar.gz"
    sha256 "f75532e7def789115581b28ba12eaf8f72ef1ed732faf02468f77c5c837f8284"
  end
  on_linux do
    on_intel do
      url "https://updates.porticol.app/#{version}/porticol-cli-0.4.0-linux-x64.tar.gz"
      sha256 "6d81cf96edd14565abd65f870d5f2b41d3480d536a7e5bb714cdaa613c557204"
    end
  end

  def install
    bin.install "porticol-cli"
  end

  test do
    assert_match "porticol-cli #{version}", shell_output("#{bin}/porticol-cli version")
  end
end
