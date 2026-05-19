class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.1.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.2/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "b381fdc34ff06501005c77b6f6db71e47505909ec357d49c8c9c3a0bae3002b6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.2/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "cf4a07e4c7905c3882d54fd8ab43ed40f7aa5002e423eeb3b9670e45c164f110"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.2/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "e2bd1f0d5d241866b6eca49fea9775c13338f036d0421d1eff445bb35be6baef"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
