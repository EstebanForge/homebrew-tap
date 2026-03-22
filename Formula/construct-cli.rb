class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.5.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.2/construct-cli-macos-universal.tar.gz"
    sha256 "305ee92b9b4d42d55158ac761bd72f461c0304f1871875dac72e457dd5e9d57d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.2/construct-cli-linux-amd64.tar.gz"
    sha256 "3e82374d95ddd77964c883af98763edd9413a3dc9a6cb5f40da6d5db893a7e18"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.5.2/construct-cli-linux-arm64.tar.gz"
    sha256 "aadb9d4fd0904ef4c069a7c76e4a8b1e971b5f31531007cedec4669e0c79ffc7"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end