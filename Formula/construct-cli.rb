class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "3.0.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.1/construct-cli-macos-universal.tar.gz"
    sha256 "5c65fc8942416b0409e2fef48eadfb1fff52f0682ecf445f80e00335bf8b068c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.1/construct-cli-linux-amd64.tar.gz"
    sha256 "91a1853afbf9a7f50704ce1892e5feb28ffe1a1c5650c01b0f98d01d6a0f18d7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.1/construct-cli-linux-arm64.tar.gz"
    sha256 "30ae6fb4959caa7b9f2df91b4558097a95e0a06547b26c35f98d8d7caeb2ad52"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end