class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.1.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.1/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "1bd1155dd8f59f1390d88c7f682e1904d7c923ac9eae207f4e8b6dc76fbaeed0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.1/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "cb8a0d8848fe5b80cd01aa73d8285888cceb5c3094bdf9848961d5d7b8ba3ce4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.1/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "aef6452ffe1bbdfaa28ca997a0a9de0cffe1f90a0939d4aeb550c814f006778c"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
