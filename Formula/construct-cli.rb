class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.18"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.18/construct-cli-macos-universal.tar.gz"
    sha256 "70be9eb67bb90d2e636f019d28ac3bd35d267dc67103cd6b4bb59ee72675ed1e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.18/construct-cli-linux-amd64.tar.gz"
    sha256 "be597dac2461d072bf3d401fb09b3ab6197507496c20dabe2c37b3ab91eeaefb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.18/construct-cli-linux-arm64.tar.gz"
    sha256 "89b41512f0b3472b9b646eb8deba2f108368a5759e2cb67ee376da1a8a8a0786"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end