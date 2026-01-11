class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.14.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.0/construct-cli-macos-universal.tar.gz"
    sha256 "7a682142f90a91253ba81dc2fb96f52cdde073465c51653c9b7e972d09e79905"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.0/construct-cli-linux-amd64.tar.gz"
    sha256 "1c08793c282db021442445f1484d768f34752eb06cb114829342fc6a99650b1f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.0/construct-cli-linux-arm64.tar.gz"
    sha256 "8e242204e5e7a388d7852b59ef273f171ecc7f1ae955a2290c818c30cd07be63"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end