class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.6.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.4/construct-cli-macos-universal.tar.gz"
    sha256 "c924d893b65e17ec3ec314bcfebc66673c7a1a26344b76bbb33580b26b2d04fe"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.4/construct-cli-linux-amd64.tar.gz"
    sha256 "5624a58c95350f984670a45a4fccc18d909c1252ecb72b4aedc4ff1562ff0e4b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.4/construct-cli-linux-arm64.tar.gz"
    sha256 "709f171af6868fc91fa94fa0dc7f59467d956d80dc1a03f9e9bfc8fbbcba29ae"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end