class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.15.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.0/construct-cli-macos-universal.tar.gz"
    sha256 "f532b3044c1f9bc1fa27975a2222a8296c704bb2ee58f0bcc5635698d818ae5b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.0/construct-cli-linux-amd64.tar.gz"
    sha256 "c7a125f44b545658f8f527406fcb53032e11027b58004192a627c4a0e8f9076e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.15.0/construct-cli-linux-arm64.tar.gz"
    sha256 "3c5e4a238b5ef7da29e1a60e05ccb336da60ac67529961f1d510ff0d9bb0943a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end