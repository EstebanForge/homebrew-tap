class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.3.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.3.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "6b0cf378ae4e721f7f0b1ce3bc09e6215a9f026e9c11f19f4aad9ff6dd890904"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.3.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "ff70eb3411662aad34c1c4aee32a72ecb6ee74bcc7663ef68fba8ce43f576d4d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.3.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "60dd66a9d8a5023b3b3a3cd575859465170c4ec912e84753c90aba1db0919972"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
