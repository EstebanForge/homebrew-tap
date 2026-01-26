class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.1.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.3/construct-cli-macos-universal.tar.gz"
    sha256 "f1c1e61bef3bf25cf816d026db250dcb9a5252ec32d95f42dbab9b1d97b6e28c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.3/construct-cli-linux-amd64.tar.gz"
    sha256 "411a707bb96bb2f842a474953ebc40a93b2a6b8043dc192b0b0507e7dddd235b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.3/construct-cli-linux-arm64.tar.gz"
    sha256 "2e7be9c0adcf385642efb3f60458facdbcbc1eb78cb85538a99cfaf8fa734e1b"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end