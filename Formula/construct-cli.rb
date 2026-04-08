class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.6.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-macos-universal.tar.gz"
    sha256 "a77444731bc367c5c3fad53dd6fd02a3b2662e55a2287b08ce6f6555cecddce7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-linux-amd64.tar.gz"
    sha256 "52e226c5e40332f67803a22d6ae5e4850f98105c5cac6942b0165ecb8fac94c6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.6.3/construct-cli-linux-arm64.tar.gz"
    sha256 "ed3543d032b46ad02a9d59719e670db772dd58f1f19be84e81a419e1f78632ac"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end