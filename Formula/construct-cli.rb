class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.16"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.16/construct-cli-macos-universal.tar.gz"
    sha256 "48a48f84c60aca8c27bd0a83bfce2f314fd0c12b70609e5b11ebd585b62e03f4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.16/construct-cli-linux-amd64.tar.gz"
    sha256 "c9749acfb4aa8db18190f3c12da3f6acb52e6a56ac34a4a884e994738af599c9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.16/construct-cli-linux-arm64.tar.gz"
    sha256 "28c3247c75ae89eab90f7cdc7ff4a5fa0a993a0982318957d4289d13ddddeed5"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end