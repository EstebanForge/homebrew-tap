class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.7/construct-cli-macos-universal.tar.gz"
    sha256 "1174ac721c9587259ca1d90a071fe9e82bbca6f850d2d08a82d4ac6012279448"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.7/construct-cli-linux-amd64.tar.gz"
    sha256 "e09d3896c2d8d11638f917437790752feab3cbf6eabbbcd0ace17f07a462994d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.7/construct-cli-linux-arm64.tar.gz"
    sha256 "684eaa58d7bd70a82902f3f31776a6478e2b3ec0a3e265c65790ce263f844cca"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end