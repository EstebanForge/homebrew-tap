class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.19"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.19/construct-cli-macos-universal.tar.gz"
    sha256 "702c3b6bd55a20c7be63d9921a33bd67864c1cdbb76251cb1876abf86874d29d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.19/construct-cli-linux-amd64.tar.gz"
    sha256 "0294b4742e7cda8447f9f441dceff65665340e92b9c1d54de2cbbdf30b150faf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.19/construct-cli-linux-arm64.tar.gz"
    sha256 "84c3f676229f6a829be85fbf457b6d570bde4894f2c9bfdc997a7365165a6c3b"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end