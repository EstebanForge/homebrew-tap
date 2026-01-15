class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.0/construct-cli-macos-universal.tar.gz"
    sha256 "d5fa3f6f18641a5585bfbb828a5add8409ff72f09c25008553a4e98596d9d8dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.0/construct-cli-linux-amd64.tar.gz"
    sha256 "22ed23afcab7d0e41e46da0c46706f04d898e984414ed2d29754d121827ac354"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.0/construct-cli-linux-arm64.tar.gz"
    sha256 "07d34957a884869e5516bc63f556d3aff2189ecc8d5147460534f76039283935"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end