class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.1.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.1/construct-cli-macos-universal.tar.gz"
    sha256 "a70155082d8e6aad3400288ec9fd4882ffd8157c6ca673cc3c4e1d23f0c029a1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.1/construct-cli-linux-amd64.tar.gz"
    sha256 "d257f6f2cfc7fbaec18fa07bd2583f47bf9748b6b32fc21be2e31b4ce48ce2cf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.1/construct-cli-linux-arm64.tar.gz"
    sha256 "d9ba2b9951866500d595ce01eaff265383bf5dab4b9e75fb13191d30000cc2ef"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end