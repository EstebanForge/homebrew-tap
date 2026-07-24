class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.13.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.13.0/construct-cli-macos-universal.tar.gz"
    sha256 "1cbda95760cc0c74ff80d0c02983c8837a848f56c9558d647360d1678a61a711"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.13.0/construct-cli-linux-amd64.tar.gz"
    sha256 "6fa615de6305f9847fc9a9f0572cf3bef464617f8ea9741585e1191349d48d4f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.13.0/construct-cli-linux-arm64.tar.gz"
    sha256 "655f616fa9add6d997e28d67b7194d5301c85f84cc814719821fe1a8027813a4"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end