class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.6.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.0/construct-cli-macos-universal.tar.gz"
    sha256 "d12023125749769bcea0ebf7b02d7d398eebd4478a20c6ec03f7506e547f770d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.0/construct-cli-linux-amd64.tar.gz"
    sha256 "504b6d6540239a11f5cc7f34376c729c4ad7de8845e4085a472b2235f1ba232b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.0/construct-cli-linux-arm64.tar.gz"
    sha256 "e87747d7583f08f2fd7d82263c2258800812e029401bafcd455454be78527ef4"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end