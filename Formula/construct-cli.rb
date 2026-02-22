class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.5/construct-cli-macos-universal.tar.gz"
    sha256 "146257175343394567e2f40d46d35613cc2f8c9dec90b0cac8444d3925ebc082"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.5/construct-cli-linux-amd64.tar.gz"
    sha256 "7a066beecd9dd795bd5b40a1a76ddbb8f3a4d355dd8ad4ed40c982187a3cf8c6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.5/construct-cli-linux-arm64.tar.gz"
    sha256 "3544ec593e6b9de127dea4c31a7618bd39b33ca60d760797092f41a693a39846"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end