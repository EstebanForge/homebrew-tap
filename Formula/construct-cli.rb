class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.14"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.14/construct-cli-macos-universal.tar.gz"
    sha256 "ad794420f73c6cb830b2775520bc665d56ffccd5a452a584b20710eaa2814b6f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.14/construct-cli-linux-amd64.tar.gz"
    sha256 "76b5199d2a2b196dd53a15c3df01a1b48682e632045d809e0b68ce34b6b2dbf1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.14/construct-cli-linux-arm64.tar.gz"
    sha256 "62154ad626d2da6dba101fd7be905da0ebd852bf7adf96b48620f2c9c623c1ee"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end