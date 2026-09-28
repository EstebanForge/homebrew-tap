class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.5.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.5.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "a243e43d3528180128e74c0d6c0103d5005a8d13384371e9ff8d1339b6933f0f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.5.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "c80119fb07a618ecab7709b05b2624e1b36d34e5033743687bd3d0639890e981"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.5.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "b1033b15900c9acef3df0d2126d7f13a7e6c28257e3091ab5579df1c9a851e32"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
