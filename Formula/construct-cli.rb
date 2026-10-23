class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.18.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.2/construct-cli-macos-universal.tar.gz"
    sha256 "48c33cbd8933d15586b341446ce977349dbb91432caef9dfab28c09b0bcd76ed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.2/construct-cli-linux-amd64.tar.gz"
    sha256 "01fd6a869997355f62091052c3c5152aa6b662760367f31f1040ee345c5bf1ca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.2/construct-cli-linux-arm64.tar.gz"
    sha256 "583582d7f368587ef5fda8c4050360e2b94d5367304b2edc2efc248fd3946105"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end