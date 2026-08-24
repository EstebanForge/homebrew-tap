class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.16.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.0/construct-cli-macos-universal.tar.gz"
    sha256 "6ac8a8aa20619f19631d83847ad96982aa052789ded922b5f37ce0ce26b9311b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.0/construct-cli-linux-amd64.tar.gz"
    sha256 "133d574c199c6d0e1d70622beb14e383be7d61f4b5953bf62d9afb6cfddad3c5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.16.0/construct-cli-linux-arm64.tar.gz"
    sha256 "749a3a8e13b57cc79bff4e33cd2147313355c137969aebfb0a246f6626ed286e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end