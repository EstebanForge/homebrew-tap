class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.5/construct-cli-macos-universal.tar.gz"
    sha256 "bb7a9821da91352eed5e2c2dca6eae686f4d92552339533c7cc00d5f5e3ccdce"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.5/construct-cli-linux-amd64.tar.gz"
    sha256 "623340f380f2451e44f7378b05115cb04e5f6b44749ab9f4554776bb50bfb84a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.5/construct-cli-linux-arm64.tar.gz"
    sha256 "23b51126579f8fd7a2c3f32dde6c1f1dccb8ca43435b5d9528e8ff3f607e43a0"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end