class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "2.0.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.2/construct-cli-macos-universal.tar.gz"
    sha256 "2d4cbdcc6556c29a70d76ce68c5f1b1f654a84be55e9faa8744af4f530a5b7bb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.2/construct-cli-linux-amd64.tar.gz"
    sha256 "d65cac08dae2631e007cbac7376b1c6dd1d5e2e9ef9ff0b55164e11e6e86e242"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.2/construct-cli-linux-arm64.tar.gz"
    sha256 "9374522d384be75c519b2b5642ee04f3cab6633a67313c6eb5cfc6141487df56"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end