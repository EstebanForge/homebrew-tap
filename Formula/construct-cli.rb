class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.1/construct-cli-macos-universal.tar.gz"
    sha256 "ef501b110733e5384fea760ee9af297552135ae5c862bb1fa7b6ca8152f8b52f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.1/construct-cli-linux-amd64.tar.gz"
    sha256 "0c7df274b9d96d34c366e590a4f393936e0d24e49f193cdb335fcb39abcd0add"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.1/construct-cli-linux-arm64.tar.gz"
    sha256 "2b1b70c518a51b212c562ad04744c0696518631b83b4aeb84073fa90b8d7f112"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end