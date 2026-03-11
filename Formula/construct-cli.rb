class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.2/construct-cli-macos-universal.tar.gz"
    sha256 "4c62c0e6209d4282f54c03f984fdadfc8d442bc7cc90a113bcb92b59eef1cb59"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.2/construct-cli-linux-amd64.tar.gz"
    sha256 "4e3ec45e0a62afbe4f3eb02f4e117ac2bd35ab5a2a85b781f17957d91740480b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.2/construct-cli-linux-arm64.tar.gz"
    sha256 "242b5e81846da7e41c6362192540fde722d804fc7d98635307964d6029077a5f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end