class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.12.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.2/construct-cli-macos-universal.tar.gz"
    sha256 "d2c4da9c2c073d072f1e693391f5e6f0b1a32de22a7d0a26c3ac03876be1bcff"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.2/construct-cli-linux-amd64.tar.gz"
    sha256 "d144a1839bcf97ba100a34b6d77e00f955bd04d8e8b1dc1d243a45f5ba3368d1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.2/construct-cli-linux-arm64.tar.gz"
    sha256 "8acf294f784793bb806470d0aab6e3f4a8e79611ccce635bb71f5b70d74929bd"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end