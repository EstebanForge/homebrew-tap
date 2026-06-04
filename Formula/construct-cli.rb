class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.15"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-macos-universal.tar.gz"
    sha256 "a8c89fa8276f5ed34c95eedd3e732c1c704e84a052ae0f7ff1bb09f905b3f4ec"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-linux-amd64.tar.gz"
    sha256 "6c3a377bf29a8a2bcc28a5a2ae17afb95426a50e3f6cfba0ec1293f87891f755"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.15/construct-cli-linux-arm64.tar.gz"
    sha256 "d9e6daea5f27c8f4d0a21f75ca85b5af8c59bfef862230e902dfdc65761852e9"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end