class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-macos-universal.tar.gz"
    sha256 "bad5b71239ab58c4ca275d30923b958bd2b58dc9a202be11a247b654296fdcdd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-linux-amd64.tar.gz"
    sha256 "478d943c2c8c01c9d56e272504f7d13d6c5c6a23052c12ea4e083be812b7c12d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-linux-arm64.tar.gz"
    sha256 "3489693fc5ea10bceccf3d5e9119972a61e021370ded2707fa8a86a745368cf2"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end