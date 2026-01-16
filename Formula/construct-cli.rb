class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.1/construct-cli-macos-universal.tar.gz"
    sha256 "ec60dad51c9ef6e8f9cbab98c13a3c7ecbaf2b04e75ce746ebb9fbe8b8a81be3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.1/construct-cli-linux-amd64.tar.gz"
    sha256 "a27cec7f6d265d9c02c4ba1d93a68d4e096952f2e1ac4899a8d7cf8ea8503e0e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.1/construct-cli-linux-arm64.tar.gz"
    sha256 "c7806437418cb38bb9595d07f3c3248d68f02abc733b6d7874661bad473f9525"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end