class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-macos-universal.tar.gz"
    sha256 "9c1f187ba73b8e62c7eed362bdc7d4f551b46bd488075f867b33a15469713bf4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-amd64.tar.gz"
    sha256 "5d30678dafa6a13eb409fe57a11ee88bda5d940e9bc0c0f3e782bc7b423b55db"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-arm64.tar.gz"
    sha256 "b007984360a34dad326bcedc2e06007bcb9fdd9e8427336378cb149133708c06"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end