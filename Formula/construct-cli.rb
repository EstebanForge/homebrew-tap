class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.10.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.10.0/construct-cli-macos-universal.tar.gz"
    sha256 "18fc8abb801f7a2b6fe9c8c502b2b450de293d38554b9a1d7f2734c97c9633bc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.10.0/construct-cli-linux-amd64.tar.gz"
    sha256 "bbf69088b6caa58d9dec673ae411e3f5f7d6253ad2693556262a7eba13bb310d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.10.0/construct-cli-linux-arm64.tar.gz"
    sha256 "285bed9cac5de3cd3476fa316b6c0f1ae197096e8b20d13bd88ab61f1c76bba7"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end