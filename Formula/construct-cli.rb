class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.9"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.9/construct-cli-macos-universal.tar.gz"
    sha256 "80c3a309c5673e9b45e3284b686e47618f2cfb0daa058a49192035386231d37b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.9/construct-cli-linux-amd64.tar.gz"
    sha256 "731b2de114624b45cbf0b7ec4ddc3a83e436ff1e01a59e267ce34f352cb76ebb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.9/construct-cli-linux-arm64.tar.gz"
    sha256 "f4c5382c3dab6b49a19526574c04fd92663420360ad185531d7237ea16a538be"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end