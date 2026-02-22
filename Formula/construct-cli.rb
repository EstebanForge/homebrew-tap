class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.6/construct-cli-macos-universal.tar.gz"
    sha256 "b47e0594bea9b9c017946c56db8a1917525b38f61a57817f2a5ff2bf7cbe8064"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.6/construct-cli-linux-amd64.tar.gz"
    sha256 "9278257d98ee87a151cee525844b8555983e5a87e01fb10cd49aafea56ec0ad5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.6/construct-cli-linux-arm64.tar.gz"
    sha256 "c540d6e89820e4f90ce4c685f172812b2c2ec16ab81466e8c6fca90f60fa36e5"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end