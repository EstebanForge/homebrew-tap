class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.4/construct-cli-macos-universal.tar.gz"
    sha256 "ccd0cc514a486858b553000a249fdf3e5434865fb21f124ab99602ee82350be8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.4/construct-cli-linux-amd64.tar.gz"
    sha256 "32826aff9fa7a548f9d7f15b776c06112d33a68d22eb9c77a962329f64904c6e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.4/construct-cli-linux-arm64.tar.gz"
    sha256 "ff075928cb01bee5563d714ffb896002ae0fd2c3edd354c403ae642954c53427"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end