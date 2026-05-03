class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-macos-universal.tar.gz"
    sha256 "5b94032b50cf87d3d58e369fbc27cef9f1fa9a425f44c9d2709171fab4ad3912"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-linux-amd64.tar.gz"
    sha256 "d76303d0eace15c18be8a4d63d7876c73ab2a2ac217495644f67843c16d2345c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-linux-arm64.tar.gz"
    sha256 "7e2512088792b7543393cfe30fb5ca799ed40bc0c0b96d148b31a22488450b57"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end