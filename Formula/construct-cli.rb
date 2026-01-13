class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.14.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.3/construct-cli-macos-universal.tar.gz"
    sha256 "dcf9a714dca5765b685fa1309552de638923f9507eb1ada66b4aa180083f107e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.3/construct-cli-linux-amd64.tar.gz"
    sha256 "a47b1c3fb80ecb4ee81f2f54485543076f89b8a0a489e7ae7fc6d75764b9a87c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.3/construct-cli-linux-arm64.tar.gz"
    sha256 "db2fdc3d6750df6235af5811bc3e4e03085a2daad3682d6f4c2f1e411116291e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end