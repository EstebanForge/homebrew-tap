class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.0/construct-cli-macos-universal.tar.gz"
    sha256 "2dcb2120bee307274b982e36f7c4cc0875e83e42734b2645e256f5a0b8e76660"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.0/construct-cli-linux-amd64.tar.gz"
    sha256 "494f9e18a77483df4435d814c5ab48dbe2d7e065add098f5ef6c3a43e382fc77"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.0.0/construct-cli-linux-arm64.tar.gz"
    sha256 "f8ff18a7d583e35aa2b22619b2264caafbf2009663642966c2b5157870282e05"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end