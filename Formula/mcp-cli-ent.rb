class McpCliEnt < Formula
  desc "Context-guardian CLI for MCP servers"
  homepage "https://github.com/EstebanForge/mcp-cli-ent"
  version "1.2.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.2/mcp-cli-ent-macos-universal.tar.gz"
    sha256 "48f6490442f77dab3130dd8bd82664b616dc75644cbbc4c314b4e31a5c647297"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.2/mcp-cli-ent-linux-amd64.tar.gz"
    sha256 "ad3d46ba5779c75a7e542c4bdfcc0997eaa846c890ada04a80abffac9437d49c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/mcp-cli-ent/releases/download/1.2.2/mcp-cli-ent-linux-arm64.tar.gz"
    sha256 "bfe64ef8a09811755313202f414f80038ca8af6570cff1431b40310fd7e4bff4"
  end

  def install
    bin.install "mcp-cli-ent"
  end

  test do
    assert_match "version", shell_output("#{bin}/mcp-cli-ent --version")
  end
end
