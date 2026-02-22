class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.4/construct-cli-macos-universal.tar.gz"
    sha256 "37a0a525a37a87bb3981f4169c6f86bcbd7d3dbb42189636945220192c9bcd8c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.4/construct-cli-linux-amd64.tar.gz"
    sha256 "2255f322f94b948aa7d2c7c10e663a9fd58a518c4033cf4b347f71869de0b07e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.4/construct-cli-linux-arm64.tar.gz"
    sha256 "41b4d3101d7335a073f43e3d35ae8e4ec4146c7a9631037f76187e553495e8a0"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end