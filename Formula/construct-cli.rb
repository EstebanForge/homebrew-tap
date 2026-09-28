class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.12"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.12/construct-cli-macos-universal.tar.gz"
    sha256 "6835a6c5066b85bc809e50e8a923d6fec3d96bfa7cb6cd88979078cc44b87541"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.12/construct-cli-linux-amd64.tar.gz"
    sha256 "1a3b3abf613934f04abf476bf627631ca8399943dcae8ba3ffdf23a2c3291b28"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.12/construct-cli-linux-arm64.tar.gz"
    sha256 "212822e989b3939d1d8e3d9fa2594b71769933c5c88e9cc6607eee0935d13186"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end