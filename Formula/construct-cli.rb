class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.1/construct-cli-macos-universal.tar.gz"
    sha256 "fdd482274a5acca1c3c6cb275e604e30192709f2b120db2b7c3b7bf3e360541e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.1/construct-cli-linux-amd64.tar.gz"
    sha256 "4907e3256cf406649a4c5166a6796b707d167098da70429edb0a0699c8d3c97e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.1/construct-cli-linux-arm64.tar.gz"
    sha256 "9f7ead8bf69ecf6744700ee509a256d32a96a544264c21e27c3ba4cd704c51ba"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end