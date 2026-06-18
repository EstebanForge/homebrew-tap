class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.9.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.3/construct-cli-macos-universal.tar.gz"
    sha256 "27bac7319f4a22b8145a9891d80e28a0bda5493b8889a1414af5d01317aef021"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.3/construct-cli-linux-amd64.tar.gz"
    sha256 "c81c1e0544d2fc3049d85d9c63f6893a71e2a9c7652d2072141b33885d6ff01e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.3/construct-cli-linux-arm64.tar.gz"
    sha256 "d1fe14325424d92339c879667b107b58ba7cdb3981c735bf3578009851fcb0ef"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end