class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.11"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.11/construct-cli-macos-universal.tar.gz"
    sha256 "7c9165c1b2f735cde0da6f5ed636dabd48ea0db2b9a1d548fbb46ad493b98bf3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.11/construct-cli-linux-amd64.tar.gz"
    sha256 "bc476a8ece2ac282d53716cb6c7ccfb9ddfe29530371d4ae04564d255498fddb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.11/construct-cli-linux-arm64.tar.gz"
    sha256 "9f59938b94136e8ff45c69200ca628f9785a6ac352e742c0f76b057a91a11d2a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end