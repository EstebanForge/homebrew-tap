class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.5/construct-cli-macos-universal.tar.gz"
    sha256 "b9d29b61f67064ac156fe45b0bf995a2cff39f2d8ae4750ae3fa4ac77b499843"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.5/construct-cli-linux-amd64.tar.gz"
    sha256 "571642060f525039d9c54e3c2bf5c0b79fd477d8b46f2c62f5f06db0d514227e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.5/construct-cli-linux-arm64.tar.gz"
    sha256 "65799381376743f7e656aa97264bc2af0311181ed255ad34f20c0a5f13d777d9"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end