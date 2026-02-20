class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.2/construct-cli-macos-universal.tar.gz"
    sha256 "f0fde03378c76dde354b73c7483c359cd4c0ac53acdbf89df58232e5506ce3f9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.2/construct-cli-linux-amd64.tar.gz"
    sha256 "570a39cfe0764d955288081688f8eb402270d560026d8d7374327da374dc740e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.2/construct-cli-linux-arm64.tar.gz"
    sha256 "6f2d81cbbece7d6d7141398124867bf1533392bcc9dde733f6c0a553e31ec7e3"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end