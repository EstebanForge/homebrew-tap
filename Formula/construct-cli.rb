class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.2/construct-cli-macos-universal.tar.gz"
    sha256 "6dbb6bf7dbf65339f3f3cc3d2ba20cd9b369308e87cb5322ba97ee81a3e5b011"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.2/construct-cli-linux-amd64.tar.gz"
    sha256 "dcfbe6aac5838c09c5009843742ac75bebb0300f7c29e12192e6727c5612c47d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.2/construct-cli-linux-arm64.tar.gz"
    sha256 "0244504df9afc62e1070155ffb06ae0b7ab5d922dd8dad637b6960648152416f"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end