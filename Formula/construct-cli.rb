class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.4/construct-cli-macos-universal.tar.gz"
    sha256 "dd835d501d4baf0428e8905798dc4d9d1c5291507321c809622397d01237a5f1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.4/construct-cli-linux-amd64.tar.gz"
    sha256 "94715f08337a0cbb6bfde8077e879ef18e7be5d9e4f6e42ed3dff3e1656ed247"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.4/construct-cli-linux-arm64.tar.gz"
    sha256 "d9c8960cdacd919e687c6a00cbce68d38b0e9c9a0a3e3e0360ced319ef89e336"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end