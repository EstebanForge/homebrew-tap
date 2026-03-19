class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.5.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.0/construct-cli-macos-universal.tar.gz"
    sha256 "4d3bdbb95b14d53bfb443e7fe2219f7c294f241ec745a00ef532af514bc519f9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.0/construct-cli-linux-amd64.tar.gz"
    sha256 "0afda6fbf7fe9187e48c664452fb0add130a574af9adf26c09de0f4229773602"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.0/construct-cli-linux-arm64.tar.gz"
    sha256 "c09ebe46a98478367f3c3188e091db017f3a42c2eda55a30f8fd5d509bc75e55"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end