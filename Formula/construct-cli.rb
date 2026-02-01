class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.2/construct-cli-macos-universal.tar.gz"
    sha256 "f55f4ab007c6caf04af1fb2339457801db5525c73f908e304ced0f952897b2c5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.2/construct-cli-linux-amd64.tar.gz"
    sha256 "482dfad65fa5528d8590d9ff074187343d90cdc0d98c1eda9aa1b7b3a1ed2a40"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.2/construct-cli-linux-arm64.tar.gz"
    sha256 "1799e8fa6db4a29f07b63ae0cf62d02840be862a367c997422c4b14745aa0fbc"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end