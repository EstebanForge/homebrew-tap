class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.10"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.10/construct-cli-macos-universal.tar.gz"
    sha256 "44b07c2ee02b6b98cae0d4ba6fa1a88450a8d4b37d4657eccae391b37fc2ac29"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.10/construct-cli-linux-amd64.tar.gz"
    sha256 "f5e6d1c8d92c8ba0085dd6f4a855974b332c93fdaddeb61675b8ae3c264b1b8a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.10/construct-cli-linux-arm64.tar.gz"
    sha256 "20ae199298918ca11fbf9a9dfe497e0005b3659a00052c1ee7c311f96755991c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end