class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.2.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.1/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "471f7d0dfbeb9a5e8a41c87a8f72abc08e40647263add547e5989fcbb1e5a379"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.1/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "ea49cba900bfe024b5fddf04e249aade631954c5059a6f91b900437a206cb539"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.1/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "827f992c83fba03ed7e89ecdc1f08f14ec6ea0e1527bc766ad9bf67f4b211e09"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
