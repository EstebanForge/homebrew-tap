class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.0/construct-cli-macos-universal.tar.gz"
    sha256 "3af5d35564a0b0db64860ddfdd9d4289192a48e2a293a1ca0bfd10f9e2e983da"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.0/construct-cli-linux-amd64.tar.gz"
    sha256 "58f8900148a4e8ed031bbac48702c8be81f7bfcb65e014dac058f76d7ae7fd91"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.0/construct-cli-linux-arm64.tar.gz"
    sha256 "b998a524bb625715eee935735a252f3cf6588531d511fdf0133a0c0f8315e482"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end