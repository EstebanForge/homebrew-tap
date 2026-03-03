class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.1/construct-cli-macos-universal.tar.gz"
    sha256 "3d18664ce84116f1f7961201114264595ad7ed599985919f1da81fd8d1689223"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.1/construct-cli-linux-amd64.tar.gz"
    sha256 "8725f7f51225254ac4a631fab6606710dac611dfef5d7ecdb780b3fa2d2d7d45"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.1/construct-cli-linux-arm64.tar.gz"
    sha256 "dd6e85d87f2d2c5f0f4dbf6c1f3bb730f8e5fbb9c644a505248d064c04857468"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end