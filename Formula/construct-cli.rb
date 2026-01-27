class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.0/construct-cli-macos-universal.tar.gz"
    sha256 "bb4f9546776a86416d36c19e67f49e554215d3ed4bc7195a21903da8ff7637d5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.0/construct-cli-linux-amd64.tar.gz"
    sha256 "ba08cb0edf0f5b5d435a6bb95bd2dd9e6826040d211d5bd8b38cb021116ff9a7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.0/construct-cli-linux-arm64.tar.gz"
    sha256 "73dfcb55dc78e934ec7986f4126de9cce7e0e4299d534f5471568fff54bec72f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end