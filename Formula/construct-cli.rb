class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.12.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.1/construct-cli-macos-universal.tar.gz"
    sha256 "7df55f62e3ac013816d04a9d7cf657341914bf4b52d4fd67143a6a40f802b9e0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.1/construct-cli-linux-amd64.tar.gz"
    sha256 "65bf9d1132db20b1c76057f02de2154946632af8d0728e366188fd8f3fa53ac6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.12.1/construct-cli-linux-arm64.tar.gz"
    sha256 "50caf0f5524cc2e5ec6e431921f81bc7336cff81cd262003ee62ed50d61d6f33"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end