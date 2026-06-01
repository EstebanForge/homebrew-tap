class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.13"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.13/construct-cli-macos-universal.tar.gz"
    sha256 "a666cd99a1121d6ade41f3752714df4136cb22656f082b8e7db59a660f3f3160"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.13/construct-cli-linux-amd64.tar.gz"
    sha256 "44c302956b59c3ee6f79d91eb271e1e118bd6745d16644e2f968239816ce8a9b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.13/construct-cli-linux-arm64.tar.gz"
    sha256 "f11294bc01428ed88df3180a40f8250dcea0c51619aa4d07ec7d1dcc26b57801"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end