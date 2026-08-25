class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.16.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.2/construct-cli-macos-universal.tar.gz"
    sha256 "1ebec469094b7762749941597cdb20bb9d8289d867affc0d285539af45d2c485"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.2/construct-cli-linux-amd64.tar.gz"
    sha256 "408f4bcffbe2104770b9e29dea474baa402d99059496c6cd35d5085fc853f4bb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.2/construct-cli-linux-arm64.tar.gz"
    sha256 "e6f765ce2983b606e6cf9e522e6e61db6c4f7ab873e90356c3ce91852475ff89"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end