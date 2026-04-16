class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.0/construct-cli-macos-universal.tar.gz"
    sha256 "6fec1d697817f330a2668ee05fcd760985c83c20631a809d661d67288f220a2c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.0/construct-cli-linux-amd64.tar.gz"
    sha256 "f5b40a376b3584ed969084bc723ae3ca14924b52d002df899ffe84e7da35f2f0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.0/construct-cli-linux-arm64.tar.gz"
    sha256 "e473412fd992e43b09059168090233d612383aa3c607499e70fb025c7a70b563"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end