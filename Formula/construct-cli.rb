class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.19.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.1/construct-cli-macos-universal.tar.gz"
    sha256 "1b8bc3a5b908546841924319df70f0fa14743c90a0840e8e1b42b0058fa6fb43"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.1/construct-cli-linux-amd64.tar.gz"
    sha256 "ecdcc59bd1959c3f15e72b70ea4642bd3bd9520e4f3abb06ce9e2ad8b2d96640"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.1/construct-cli-linux-arm64.tar.gz"
    sha256 "641e373efc2315fe0194d40874971312cdc4233adfa30944d7c2008fb655286d"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end