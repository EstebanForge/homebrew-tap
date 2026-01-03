class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.0/construct-cli-macos-universal.tar.gz"
    sha256 "d9138ac6d773c6e8e41e326829abb25e31f70e4b715d7ef31290811f60f8fd1d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.0/construct-cli-linux-amd64.tar.gz"
    sha256 "1bcede649aa8c95afdef4e53a752cd1f67fcb9df3e97c040a573197b80e74fee"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.0/construct-cli-linux-arm64.tar.gz"
    sha256 "30be1c863497e7cc51c8030bed3c1a08ad8f72e24eeb9ca3383a505d61fadd34"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end