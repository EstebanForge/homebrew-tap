class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.3/construct-cli-macos-universal.tar.gz"
    sha256 "f5b4d9a0271f5639bdff4e4aa8b7b1d4aaea09897554e18d57e744bc30cb4a43"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.3/construct-cli-linux-amd64.tar.gz"
    sha256 "cf65e141e66cdab7ab850bc06fd54706770c5f939692018372c885bb73d5bbb9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.3/construct-cli-linux-arm64.tar.gz"
    sha256 "d162dffd9a917e34d9e9a90759268b71fbb51d997ab955984cae90526c1e0071"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end