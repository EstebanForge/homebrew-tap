class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.2/construct-cli-macos-universal.tar.gz"
    sha256 "40c8a4dc524ba1ba37e3396332eb7a71838f4a2896afc40e908f6638ae8ed33c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.2/construct-cli-linux-amd64.tar.gz"
    sha256 "9d47e89f5395a25e79ba75fb35a27a0835536e1375e1c6b96385142cda4fa84f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.2/construct-cli-linux-arm64.tar.gz"
    sha256 "9f5d3c9c101c89da026e065902943685016f16d9c9d941600eba07193b6ca722"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end