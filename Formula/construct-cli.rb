class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.10"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.10/construct-cli-macos-universal.tar.gz"
    sha256 "f547232ba9f7659a3a2f04d6fe374c5d93e5b67fcb1600fb655bdac91368c9d4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.10/construct-cli-linux-amd64.tar.gz"
    sha256 "b0228f7cb2af28579dafb1a04c98e674dc2fc09d3575b565f65fb872b2f5fd7f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.10/construct-cli-linux-arm64.tar.gz"
    sha256 "5a928bdde0c30e350cd3ed86c113422744d64f7b5aec2e19add9e4198bd9af33"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end