class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.1/construct-cli-macos-universal.tar.gz"
    sha256 "0b8439ebe2c0526c755b9259c9b5af45d65c4766b5a7856f7f30db2831ec5d0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.1/construct-cli-linux-amd64.tar.gz"
    sha256 "fd3468a690ea424560736471b38f34f582723eb6832dc22362615aa28ec44dc7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.1/construct-cli-linux-arm64.tar.gz"
    sha256 "5030da424e79328c9b2eb89246dc2c58bdcd36758ea223015397fcc655ce9477"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end