class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.13.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.0/construct-cli-macos-universal.tar.gz"
    sha256 "574e8594bd4d58c02bb6ed78e1bb4a9d894d0dac3e97199658cf84c9ca7b189c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.0/construct-cli-linux-amd64.tar.gz"
    sha256 "99d9916cd916936bba9dc995d0995b0b92fa91560f000c8b91c961459fc3fafb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.13.0/construct-cli-linux-arm64.tar.gz"
    sha256 "b041b0fb72213cba26ab604d4100827422de69eb7ba3e1693ebef59a2210ea65"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end