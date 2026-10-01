class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.17"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.17/construct-cli-macos-universal.tar.gz"
    sha256 "48246732de0224fe6cf43a8a261e13233298c4e302c9ec28e5ed70e486d6aee1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.17/construct-cli-linux-amd64.tar.gz"
    sha256 "7e16f0c2254ce8922809b44261ec59c14e5ee60d0c5cc1083011fec562c103f1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.17/construct-cli-linux-arm64.tar.gz"
    sha256 "a3c4d781f677c11c855563e8eaacab17f2d189a74dd50dbefad2d6820ae75c5c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end