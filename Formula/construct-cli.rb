class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.1/construct-cli-macos-universal.tar.gz"
    sha256 "35036b7b53b3e558c365f7b63b1668f58a07bc581d2b8c499b6cbaf94b5fb042"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.1/construct-cli-linux-amd64.tar.gz"
    sha256 "783dae769354eb34e866aeab0b33e5961b00eec2cd732c5a693b23927a60bc22"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.1/construct-cli-linux-arm64.tar.gz"
    sha256 "93fa3bdf7d3fd15a0adbc7ef5562ffc3aae3474644db094801cf2459b82c54c2"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end