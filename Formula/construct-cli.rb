class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.2/construct-cli-macos-universal.tar.gz"
    sha256 "304dfaaaf177bad4395b2ef737c4eb0fedc471259fdb6b5aff8800a3a758813e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.2/construct-cli-linux-amd64.tar.gz"
    sha256 "0e50e9e9e018c1621de2d27e6429e6be26f1e4f4989e35bd6ba5cb1908731702"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.2/construct-cli-linux-arm64.tar.gz"
    sha256 "f8b0292ce651f81c5ac60020a3ccdbebe037c256dd8c8e929e6187d00d5b8eed"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end