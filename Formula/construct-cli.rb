class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.7/construct-cli-macos-universal.tar.gz"
    sha256 "278ef4b9d0b0b453afff513e78f4725c6e2438d73c7eef12becef7361db8b8eb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.7/construct-cli-linux-amd64.tar.gz"
    sha256 "d5dc5a6434d2637bc29f5bb30471e620f9bf8f51b7868e8bf7555c1cf2b0cdca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.7/construct-cli-linux-arm64.tar.gz"
    sha256 "658957535fcd773ba6883af560bb6e9528c27034f5a3751038625dc07fcd3641"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end