class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.0/construct-cli-macos-universal.tar.gz"
    sha256 "7053b8dbd1545846020951b70de7ab8da2012624084c6a9c5b58f55fdaabf9b5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.0/construct-cli-linux-amd64.tar.gz"
    sha256 "c83eda83581cd3ad51279b68f5ece191b178e1dedba32c473f3578f71c659e76"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.0/construct-cli-linux-arm64.tar.gz"
    sha256 "426cf29c96035d7a9b48f8ce6ac3959b867e65a5d87e4e188a3246c95c8eb5af"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end