class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.9.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.4/construct-cli-macos-universal.tar.gz"
    sha256 "e0e120b37ab9176d8568c5074166981e1900f6051e72afe0e1429d862400ab09"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.4/construct-cli-linux-amd64.tar.gz"
    sha256 "eddfb414823d15bde3f28875d74ebf4a133e16ae7ad507ffa2eb6690ee9d468c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.4/construct-cli-linux-arm64.tar.gz"
    sha256 "4451bf0e7dc3b8331a77049042ae39a4a350685962213be7b095a0d927ec2353"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end