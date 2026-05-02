class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.5/construct-cli-macos-universal.tar.gz"
    sha256 "4930c2fb4d71d43b3ab037cef5f13f08496f1b40888719ef718dfefe31e31c0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.5/construct-cli-linux-amd64.tar.gz"
    sha256 "33731acfcd04384abe045a2a584227b1c349307f2c1e73d0ff029d1ecc58aed2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.5/construct-cli-linux-arm64.tar.gz"
    sha256 "8118e3c25afbae252381b1a25ddd590e1a44b91b79db0e40e3f798000c4c007d"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end