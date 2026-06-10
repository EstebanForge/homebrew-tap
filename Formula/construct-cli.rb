class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.9.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.0/construct-cli-macos-universal.tar.gz"
    sha256 "685a5ac2f6f49eb0a65d947c9e3816c0e6a0d854fb407166de6ad8b002853b1a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.0/construct-cli-linux-amd64.tar.gz"
    sha256 "941c7223ea8419837b6db43ed99d253c09a73cc723fbe792f477014c4c00a761"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.0/construct-cli-linux-arm64.tar.gz"
    sha256 "8739d4b37212e1ad94a933831fcec339b012fc89caf753f366b882304e2dfb98"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end