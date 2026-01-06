class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.6/construct-cli-macos-universal.tar.gz"
    sha256 "df53d72b599c51e95497b904332fecbbf62a97b40c1dd57dd964d04034e10b72"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.6/construct-cli-linux-amd64.tar.gz"
    sha256 "2df7c8bed9ed43a99ed7d2380db350ed61c598fbd6e7099768f4619928e7d706"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.6/construct-cli-linux-arm64.tar.gz"
    sha256 "0f7b19dd8f1f7733e8f51cd07dcee0eeb2e8d52a9c31aa10bafc534f62341e5b"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end