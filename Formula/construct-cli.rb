class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.6.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-macos-universal.tar.gz"
    sha256 "458ff27dadfc7d1c498c3e3cb787b9b1967e3de2bd79ceae4737b90fd472f0f6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-linux-amd64.tar.gz"
    sha256 "a5e9719033f66bbac46175b9996cb81b5bcfaaa2921dc31e6316893352f1e822"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-linux-arm64.tar.gz"
    sha256 "0c185935e171a10df21d153d899696e05ed253689d9bf6e5ffc86ed9df315c4a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end