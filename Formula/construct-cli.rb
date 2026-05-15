class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.6/construct-cli-macos-universal.tar.gz"
    sha256 "5591d04f63a1b172669dba2d68d167fd19c4ba368b78af6a48422d6f5f95fd6c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.6/construct-cli-linux-amd64.tar.gz"
    sha256 "9fd7a308f1a24a3d84fc60b891d6d2e0076ff88c63859a6d1e873bab9f73dcc5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.6/construct-cli-linux-arm64.tar.gz"
    sha256 "41460276a0628eb53e9842fa093668928ca80f9f7c7fb1d8567d8c2259c951c3"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end