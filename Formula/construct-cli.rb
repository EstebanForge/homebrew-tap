class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "2.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.3/construct-cli-macos-universal.tar.gz"
    sha256 "53be72d6ab5cb9adc91d0ceb494019cc32c9bd1ec3bb9b350d172e3a2ab1cece"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.3/construct-cli-linux-amd64.tar.gz"
    sha256 "e019f038f92aa0613f910072071e49a897e42c01e3f81b94a1de0d467b2e4de8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.3/construct-cli-linux-arm64.tar.gz"
    sha256 "a344127f9d8f0fc52b3e8b6d1f993337cadc05308b1551587eba7e1dfa4e0326"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end