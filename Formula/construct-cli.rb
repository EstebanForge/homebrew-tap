class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.8"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.8/construct-cli-macos-universal.tar.gz"
    sha256 "47643bf1f49f559c1e348703ebd96d5c3ad7b3749ff24c4ee664092cbf7e70b4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.8/construct-cli-linux-amd64.tar.gz"
    sha256 "55d055837fc6537f84c04f9db9c693382874b577fe1fc8463ceb18be980cfe5c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.8/construct-cli-linux-arm64.tar.gz"
    sha256 "840acf4a18d46b878b8ab2e82527d29ad8247671ddd7c8e47fdfd85ce418a3e3"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end