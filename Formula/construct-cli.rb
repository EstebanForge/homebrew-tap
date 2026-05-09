class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.2/construct-cli-macos-universal.tar.gz"
    sha256 "b928fd1fa700bc8dcd43ce59b3ae6650bba092d0d3a599c8414f129eecbafe67"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.2/construct-cli-linux-amd64.tar.gz"
    sha256 "f8faff8197135b54be6dd8ab8cf517388a4b1edfbbde219d5343b4af5ebfcfb9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.2/construct-cli-linux-arm64.tar.gz"
    sha256 "921c9381c91293a491243253fac6a9116349ca19e0c7993928643a2a1f52bd74"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end