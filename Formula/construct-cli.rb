class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.10"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.10/construct-cli-macos-universal.tar.gz"
    sha256 "be097587f8c5488529d674fdb3ea97fe580d1b43c82e521ca68d4bd2b6e2c483"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.10/construct-cli-linux-amd64.tar.gz"
    sha256 "4d8283887e9749a720fcdb8bda3da68bdc5365e07f869ad27b8a00055ccbc1ff"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.10/construct-cli-linux-arm64.tar.gz"
    sha256 "db11f59b008d3415debdbf6b34ad26599192686777cf25cff9379ddb715be8ce"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end