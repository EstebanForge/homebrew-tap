class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.20.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.20.0/construct-cli-macos-universal.tar.gz"
    sha256 "975a81c7367df63a3db05be7af0754088c199b84a1a8991a8d1916bb66a89a84"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.20.0/construct-cli-linux-amd64.tar.gz"
    sha256 "24ebb1da29f81de8045e5b91f2d82d949aa37bd0bb6be7adee7e8183ee2274fc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.20.0/construct-cli-linux-arm64.tar.gz"
    sha256 "5f3347bed3c1f7f6b7a0a5d12bc82b88d43129afe6339f13672eddcc2a4eb001"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end