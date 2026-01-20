class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.0.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "0fd532f119a819515135f653c9c416dc3b5788a0fcd675ebacfbdb1e1c8ba8d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.0.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "4344e13711a509209c9451674f1a7dd67510a61539004896c20f19eea29240dd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.0.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "d7a2e9f42a0da4f7bf7b948c6ba632af631a9f3e9aa80d12549202d77349903a"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
