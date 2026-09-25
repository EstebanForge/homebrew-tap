class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.4/construct-cli-macos-universal.tar.gz"
    sha256 "babf542f2740a3ba0c76debb2f1b3a883bec11fa9d90137ef5a4b8835ea7aab9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.4/construct-cli-linux-amd64.tar.gz"
    sha256 "1099f28c8d0363dcfd3841bce8c2684cbeac17858416762f4b5b398a274994c5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.4/construct-cli-linux-arm64.tar.gz"
    sha256 "02f4a2b4f4d402182efcc43720fb9ac55bf749354092c85a041f63129b81b79d"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end