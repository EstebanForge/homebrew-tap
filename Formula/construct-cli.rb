class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.3/construct-cli-macos-universal.tar.gz"
    sha256 "50b4491963129d40963ecd44941df3ab09630f986f91278d057bedae8b18c929"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.3/construct-cli-linux-amd64.tar.gz"
    sha256 "af220fdccdda67aa3f5bd6aeff3d4939dac0bbdae63953b761d3f79e0ea37fe1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.3/construct-cli-linux-arm64.tar.gz"
    sha256 "15f555429c59997720c1745dc66e1585a8216cf2ef6280520d781db46530c95c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end