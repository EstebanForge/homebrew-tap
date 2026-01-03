class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-macos-universal.tar.gz"
    sha256 "2c97d368c2cb9cb199416b232c74d0a213a0cd319c8f1bf976f22f5975a81d5a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-amd64.tar.gz"
    sha256 "6e5911ee1a5c3a0e453301231ffb8bf28d9e55484f7a7acb4af2077f61fc7632"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-arm64.tar.gz"
    sha256 "a3a01bade4b83e213b3cd8bd7402c2f01f3282696194f308044aa80627045da6"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end