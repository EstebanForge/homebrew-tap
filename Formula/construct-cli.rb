class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.15"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-macos-universal.tar.gz"
    sha256 "3b1e0a6fbdccf8eb6771333f22d03e9c3eb4c990a25cd32a463244d86586e0e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-linux-amd64.tar.gz"
    sha256 "6d680858c7cafbadf57ffdbc0f085c22a20565d601a55864f81d94b0dcbcae7c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-linux-arm64.tar.gz"
    sha256 "86479525e993aa5a5446f47864aae1b25b64fe758b61cc41fe13f351249b59e2"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end