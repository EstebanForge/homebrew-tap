class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.6/construct-cli-macos-universal.tar.gz"
    sha256 "03a986b79c75d91e5bfa0d3fb37b7678a2b8482b2c2fba9fa9f6bb0a63640ed6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.6/construct-cli-linux-amd64.tar.gz"
    sha256 "23360aa6ca23e44d82515341f5826830c5f996f0b9cd4983e80f7c2249d8a309"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.6/construct-cli-linux-arm64.tar.gz"
    sha256 "ea6d6d605d59c51cd0fbd3792235ad11109e5370b1d37941935195337e7114c6"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end