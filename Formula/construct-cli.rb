class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.19.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.0/construct-cli-macos-universal.tar.gz"
    sha256 "d9d9541c0fc424f6956482a1f1cd8703b3a17e46b80e7eec98f86dd4206ef12a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.0/construct-cli-linux-amd64.tar.gz"
    sha256 "592ea570600606fadbeedb5e85fbf1028f40f2fd4b2b53b0b5053b86a191c2b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.19.0/construct-cli-linux-arm64.tar.gz"
    sha256 "4f19cb598ad99d06b774e0f5e91b5573e7dd4daf43a1a777ceebe8cc2b5af1c6"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end