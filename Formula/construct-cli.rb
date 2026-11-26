class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "3.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.1.0/construct-cli-macos-universal.tar.gz"
    sha256 "e0a9704764569c9044ec2c1b5ed3551d7632a9f9e3fe5e7928616d0a5b7d178b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.1.0/construct-cli-linux-amd64.tar.gz"
    sha256 "d4259b2d2f81204d5f50684c4ff868cbac6da497692f7fba2a8346d54b81f03a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.1.0/construct-cli-linux-arm64.tar.gz"
    sha256 "b5d5dcb4cafc70024750312af822fa358c3eb7e558294bdac0016adc8fb9ef1f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end