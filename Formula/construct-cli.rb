class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.16.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.3/construct-cli-macos-universal.tar.gz"
    sha256 "04c4dd5d9e350ad5e9e48f16648a3f62f4ff86291ae1b728427a8219ed1c7c0e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.3/construct-cli-linux-amd64.tar.gz"
    sha256 "650ac63f9ed1e82e7608618fcdcbe1f0f8715ff5dd3dc5e4d4b11590952130ca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.3/construct-cli-linux-arm64.tar.gz"
    sha256 "010a1f56aed339f4c8e1b0fe20ba12a265cc62e8f56a6f0fe41a472ac7a14d9f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end