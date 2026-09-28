class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.13"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.13/construct-cli-macos-universal.tar.gz"
    sha256 "6aee9f4053dbcf3c672b6d4f401ff2f9cc7d207ab0f67bbabcfaedb5eea2c7db"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.13/construct-cli-linux-amd64.tar.gz"
    sha256 "121f83ba055117404035896eedfd71fffacfe3fb61679a0728315129c8b30285"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.13/construct-cli-linux-arm64.tar.gz"
    sha256 "e9231c36a50aea0483fa3fd6631a6084f19ff243254854eeacf6c860ecb8d45b"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end