class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.13.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.1/construct-cli-macos-universal.tar.gz"
    sha256 "ebb80f0325c2f0e8f3dfd43cba49a62733fb0bd360864cfee7143f5336be1dbe"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.1/construct-cli-linux-amd64.tar.gz"
    sha256 "a615b938fc027c23e5233ad02fcb415b37fca809fd3afd78aef338ecd80c0951"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.1/construct-cli-linux-arm64.tar.gz"
    sha256 "ee94c359f6cecfc83a75287b3402d5fc6eaef24ac4b05acd2a592b1cc3243850"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end