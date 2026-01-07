class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.12.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.12.0/construct-cli-macos-universal.tar.gz"
    sha256 "8ca23058199872000724cfac86a124ee8bbe76cd4dc77e4a2415209eaa1ec0bf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.12.0/construct-cli-linux-amd64.tar.gz"
    sha256 "5118986e00d279426f1fa5b4091beeb243a83bed9605ef1e7f9692d3b897e601"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.12.0/construct-cli-linux-arm64.tar.gz"
    sha256 "edc88d199841fda1b3c0438048f57528d2be87049b4fd46a5fe05e73d552ffd0"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end