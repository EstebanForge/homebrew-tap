class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "0.5.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.5.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "9d4336eb056b38bc5e43321cb42447d511bfbfdfe32adf9298aacebac8e462a8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.5.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "43df188cca4b48c5b75cd4a96cfd5b1d59102c6bc4f311b1de6cfbf29ea26141"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/0.5.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "e9604e8b613ebe9e51cf5df15c910fedfc0b3d4c286a4db43028951d931d31d9"
  end

  def install
    if OS.mac?
      bin.install "mcp-cli-ent"
    else
      bin.install "mcp-cli-ent-#{Hardware::CPU.intel? ? "linux-amd64" : "linux-arm64"}" => "mcp-cli-ent"
    end
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
