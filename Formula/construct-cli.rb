class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.5/construct-cli-macos-universal.tar.gz"
    sha256 "bcc65ff1a57e669ff0af62c3ae4afe7d5c26dd5b97c36ddd82e745328d0a35e3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.5/construct-cli-linux-amd64.tar.gz"
    sha256 "8c81ace59a68d69653e885ea7eb66e16ac235dd51d9f637d6600d534438001ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.5/construct-cli-linux-arm64.tar.gz"
    sha256 "d998ec9abdf61feb5fb1d833cb0cc68ee542459387dca72d9f7506f72d8cd25c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end