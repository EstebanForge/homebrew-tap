class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.7/construct-cli-macos-universal.tar.gz"
    sha256 "7417e1622033d6090f5421c86219787374f774f69663578dff62911d4988345c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.7/construct-cli-linux-amd64.tar.gz"
    sha256 "70434d5deaa1dc7008131baeffe859a42ccbd201552ae99f2752cc43d7651a7b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.7/construct-cli-linux-arm64.tar.gz"
    sha256 "6eeb7185d674a9ee316b18e1cb891b35ab16031d0e16de5915f4fe8a88c0be43"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end