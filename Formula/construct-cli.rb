class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-macos-universal.tar.gz"
    sha256 "de23fd7ffb647e2bfc052b03e056013c55fa0c2cf12587a443c58273bfd2eafc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-linux-amd64.tar.gz"
    sha256 "ee35760fa9a85e07ec086632efdc00787a7b1cc21b3648358788b389f3491c7d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-linux-arm64.tar.gz"
    sha256 "66803f3ecb6814f6730015c62638e169c23960c09eabf73b5cee0aa39a828c26"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end