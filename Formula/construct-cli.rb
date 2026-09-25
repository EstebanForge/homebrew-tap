class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.6/construct-cli-macos-universal.tar.gz"
    sha256 "f0b01c9edbca0bc0746e9697b02105ee85bb809148ea10bddf894bdf71f10130"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.6/construct-cli-linux-amd64.tar.gz"
    sha256 "20be9595fe4bd5f00383395d6cb01f9cfcd8cede2437f14c79d164dd6e33394c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.6/construct-cli-linux-arm64.tar.gz"
    sha256 "ee7d063b326ccda8dcad4a6d6ccfd9e72e081a161e6d2a097a0430903051b934"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end