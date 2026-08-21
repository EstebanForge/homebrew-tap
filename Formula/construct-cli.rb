class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.15.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.1/construct-cli-macos-universal.tar.gz"
    sha256 "c029f44bdc4b7b37732d8a3682b3c247c9fa249ce4cbd0ac78e2e0214ce6da73"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.1/construct-cli-linux-amd64.tar.gz"
    sha256 "d9f4e787c9e495601d043a89ddee4fedd6bcd25c2a39035e914ed6c97a67d6fa"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.1/construct-cli-linux-arm64.tar.gz"
    sha256 "2b2b0052528bc44df461aeffa37b04c0827975d6d80e065209929861729fda05"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end