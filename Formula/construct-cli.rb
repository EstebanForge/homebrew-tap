class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.9"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.9/construct-cli-macos-universal.tar.gz"
    sha256 "5a591ef978cfa21766ebf6686a5a94877a452515738371b062ab5c3e7927ef9e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.9/construct-cli-linux-amd64.tar.gz"
    sha256 "c2aef4e3ed005e5640509263d2a4d8ad7472b9418fd4766f301ae22ad2207eba"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.9/construct-cli-linux-arm64.tar.gz"
    sha256 "4cbcb994c8f20f6f9dc761c9ffa6b9c441603398b21e700a31739308780e9cbc"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end