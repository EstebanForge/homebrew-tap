class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.4/construct-cli-macos-universal.tar.gz"
    sha256 "ae437fddf8175f05abd00e752bd7319f8bb410cda6942964ea55952862fdb8a8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.4/construct-cli-linux-amd64.tar.gz"
    sha256 "e9fa50dfded40d6cb4a9790df217d6733c031e7f06b237fd3b78ddeb8668da89"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.4/construct-cli-linux-arm64.tar.gz"
    sha256 "a82c9c00ce0bd8dbbeee743b60e7c1b2fff0c5c8a1d84877f5ee3d9c492d24cd"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end