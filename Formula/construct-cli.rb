class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-macos-universal.tar.gz"
    sha256 "e75b6a11e0482573b309fa684a8e1d3425a456d5b3ea52c6ca8edb3d0f07037f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-linux-amd64.tar.gz"
    sha256 "41c445fa73efd8f0f12051ee1a9e13b6029dab20e63bd19c743953a98390e659"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-linux-arm64.tar.gz"
    sha256 "24dcbbea3c9a6a340f1c551b4d900ad1d0d788aaf57f935825c90ec0e5de6a48"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end