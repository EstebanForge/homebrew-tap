class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "797293145798fed6a4a8c374f95374b2ffe57ff02a7970e882ad392e927c36a2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "4032636d4edaa7ec33204b2fe0f5ad1c0e3cb683509c9d6c12d5b58f2aa49072"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.1.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "64538beda6f9973d49e398505031ef6210b2d2b73997c192300ca0f5bec7d573"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
