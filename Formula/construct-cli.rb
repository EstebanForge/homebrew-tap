class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.1/construct-cli-macos-universal.tar.gz"
    sha256 "6995f898f122868e2836a0081772c3f9c06d8444a32136e921f30909008ffb66"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.1/construct-cli-linux-amd64.tar.gz"
    sha256 "d01c3b2a327b6858bff10da52264c7c64a656a0db880657cbf0486ea90163578"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.1/construct-cli-linux-arm64.tar.gz"
    sha256 "bc2b78f800c78265f9e9c60ea4368206ec9d6d111903d74bba3aa83302f05432"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end