class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.0/construct-cli-macos-universal.tar.gz"
    sha256 "ab6a7b6f506fc7a741fe552a8e790a7e9724ac2edcaeae9587c09ee2bdb18b2a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.0/construct-cli-linux-amd64.tar.gz"
    sha256 "2705b31f375c8379c630728e92f135256f4ec6d48da6726c9ffded2c1169af74"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.0/construct-cli-linux-arm64.tar.gz"
    sha256 "051ee5da1e5446bc55662b7e96ad7d0f2aad35325389134dad416f6b1a48c289"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end