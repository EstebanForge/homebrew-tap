class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.6.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.1/construct-cli-macos-universal.tar.gz"
    sha256 "01b73693a4bb6833dbb72b8b378d174861874fd1969eeb795c7d6e0047357303"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.1/construct-cli-linux-amd64.tar.gz"
    sha256 "b83719dd73461328c2595a865d0baa5420263c452c4c3cec300832a4d26abffb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.1/construct-cli-linux-arm64.tar.gz"
    sha256 "5438eae17b8898c30afd949e465eda47f84c7559369385f432cfb3947c3a655e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end