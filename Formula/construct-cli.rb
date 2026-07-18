class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.12.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.0/construct-cli-macos-universal.tar.gz"
    sha256 "1196660ec97ab6c9e3ccfcca2e9e3ed2e02d912213e21b0538232536a477a7e7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.0/construct-cli-linux-amd64.tar.gz"
    sha256 "e261f029f81d38ebdd66b598a7efe00290889fecae67b3fc485559d8b1861753"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.0/construct-cli-linux-arm64.tar.gz"
    sha256 "bb800517d4850522281412317fbdcfd2973c7eedb66e6cf1fab61f68b64f6f2c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end