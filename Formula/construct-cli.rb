class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-macos-universal.tar.gz"
    sha256 "27c57cfc120ce817a789cdd0f26521496ea4784caff7fa8286343e78ca3db593"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-linux-amd64.tar.gz"
    sha256 "e0bd448573f32e70fed8eb2ae3ee2c631870151b4a222974c723d0e4a11f164b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-linux-arm64.tar.gz"
    sha256 "61563e377138d197ff237e6c2e0875fd1775cd78e817ee07ce77af742316f89c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end