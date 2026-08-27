class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.16.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.4/construct-cli-macos-universal.tar.gz"
    sha256 "e21fee0ce1aae1ec414e6bcac387a92a77d0084855aa713c30d46d41c4406630"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.4/construct-cli-linux-amd64.tar.gz"
    sha256 "adb76e65c21a7938edbf97d9e56b0f338e0e1bced591b3a02fe223d52eafd474"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.4/construct-cli-linux-arm64.tar.gz"
    sha256 "82b2c7e0a1de513d2a7ad8cd49b2ea4f02e0e7d5a767daf5e064038de190276a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end