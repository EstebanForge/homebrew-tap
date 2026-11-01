class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "2.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.0/construct-cli-macos-universal.tar.gz"
    sha256 "2d62f92de2fb6caa9c926adba70c4af72a7f5dc5b0ac5393aec4860f152cd6a2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.0/construct-cli-linux-amd64.tar.gz"
    sha256 "86b943d8cde28c51fa3bcb60008d12e5c27fe1f96d3410a8af99ca513d28df49"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.0/construct-cli-linux-arm64.tar.gz"
    sha256 "041fdaf2bbb2e4e2a08a0ab1cf5b352c6e740fb543cf783ea22f33ff2ba5dc27"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end