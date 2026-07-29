class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.4.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.4.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "75c2a1fe980770f0efcb1b580c88bf3bb070cf5705a5939970a2ff2da7eabd56"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.4.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "5d04a1afd17ed0427d640c0407a80d4c9a9e1c6bba67fbfc22dce9efec20df8a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.4.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "68db3585577cf060a619febece3600e9f7227a553c8a51595a367389240d613c"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
