class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "0.6.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.1/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "1c4bdc507474dc493dbe5299deeda3fb6a3289d46650f1de81177b7c3c038236"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.1/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "b748e2a1518bf95bd640554b72939ed6e15ef82438aacb7fc6dc799a8403bf73"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.6.1/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "321b1e3854973d3a0f0ae7242a5ae57e91f7355e8ada4c2ff8380596adca001e"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
