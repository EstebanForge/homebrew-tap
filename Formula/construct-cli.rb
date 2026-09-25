class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.3/construct-cli-macos-universal.tar.gz"
    sha256 "13e9aa78090f104f0a058a2744a862ce3c9f67eb59667e02f2841594cbd57b80"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.3/construct-cli-linux-amd64.tar.gz"
    sha256 "0a4f8ae38cdcb2121dcdb166c7707b35d2565144606abda5e82cc943657eeb2a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.3/construct-cli-linux-arm64.tar.gz"
    sha256 "b38f457f04107c95f2841f1823bebd9403f8a4905fa2a40c982b38465ec5d4eb"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end