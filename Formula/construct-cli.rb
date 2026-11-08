class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "2.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.1.0/construct-cli-macos-universal.tar.gz"
    sha256 "0a7e7a96c9f0da14042a89ed2d0ae6cc879009b8d6a008dc6438a636bd8e0c3d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.1.0/construct-cli-linux-amd64.tar.gz"
    sha256 "a585c0fd4ea701a5d4536f8c4ce6ae14aaf58346e03e189f053393dd58241674"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.1.0/construct-cli-linux-arm64.tar.gz"
    sha256 "d9f6daeabaaeb19fc4b7cdd34e9fde5117feffafe9e4618412aa2d8377caa96d"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end