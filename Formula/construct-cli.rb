class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "3.0.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.2/construct-cli-macos-universal.tar.gz"
    sha256 "e49b731245941888ac15ddf566ebfbb7a90682cdfe334d0389126a8bd4c15804"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.2/construct-cli-linux-amd64.tar.gz"
    sha256 "405d769403c461dc804899d407baa3166a82f00ae6a44f99b2410bd080dd5398"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.2/construct-cli-linux-arm64.tar.gz"
    sha256 "13153b1af18d4778ec968aaf8cc2d33b102e1eb3d3d2ec9935c02f287636e872"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end