class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.2.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.0/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "923c13ad85ce6c475ee43e2aa3318ec822d2dde46df2e0904b99927dd2a1af81"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.0/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "fe548d9cfba2602e35a999e02e519d2d0b534411184ad4e3c4f189db29fdecf2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.0/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "3a81ae158c3bc7fa1a828df8ba860ce42f3cf8c9d98ed821864989956c95b24d"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
