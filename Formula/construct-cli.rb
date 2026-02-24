class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.8"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.8/construct-cli-macos-universal.tar.gz"
    sha256 "9943fb220bf2ef95e7c2c41706e1ffcb330ae2210f06180372e68ca8da279727"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.8/construct-cli-linux-amd64.tar.gz"
    sha256 "afa979efb64113d2230565485b9751815df6bf1a36c2f2dd2f7f148934b9e89b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.8/construct-cli-linux-arm64.tar.gz"
    sha256 "03b7f96e990df76b94f438f120fe3c97f442804d71e5902c88af9162d5b83f84"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end