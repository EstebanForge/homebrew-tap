class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.14.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.1/construct-cli-macos-universal.tar.gz"
    sha256 "89b37b5a23dcf5939c0534477286080956ba2fde3a6f8b6e1cc147fb444cfc87"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.1/construct-cli-linux-amd64.tar.gz"
    sha256 "8c02ecd52bcfb0646ad37a4892ef6429bc5792b407e2360dffd19363949bf5f4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.1/construct-cli-linux-arm64.tar.gz"
    sha256 "93c50ccb34071dd3f65b5b7ed8250ec7545dd36613a71c41468bcd42d0934d3f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end