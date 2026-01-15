class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "0.6.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "8f98b01a6588030cf28d96d110bdd7fa7a2edaa870a70a9070b1c8b928d95cd5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "3be365f1f3b04ab14994211c65711b064d2bb8bca0d79e1b7fbf94367278527f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "e0fbafd795bd7e468576bbd744228a43b77c0551ee16f243748852dcca9a1b51"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
