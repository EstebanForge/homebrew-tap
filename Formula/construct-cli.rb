class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.11"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.11/construct-cli-macos-universal.tar.gz"
    sha256 "5373b06141911f06f5bca782653ab2cdbcc8cc04e2e7afd959bcdfd10dae1bc5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.11/construct-cli-linux-amd64.tar.gz"
    sha256 "8a80ef88d39f11c9f064db04e716eccc1f043989b2817770339d40a8f5a6f14e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.11/construct-cli-linux-arm64.tar.gz"
    sha256 "6780a0bdf1bab562c8ce72521a2f3a747e14ed6aa0d9315716cd5ffa35df45e9"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end