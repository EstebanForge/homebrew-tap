class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "3.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.0/construct-cli-macos-universal.tar.gz"
    sha256 "bf3f0ec14582c1a32797aced7b17c084db6ec9b45d8d381a082b70547a7bf114"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.0/construct-cli-linux-amd64.tar.gz"
    sha256 "898457e01cf3cc3964d27c29c7b0c62fb7b6cd33b194e7be9514cb71d6c2537d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.0/construct-cli-linux-arm64.tar.gz"
    sha256 "e903d0c1540a15f03634f00c82709fac0d6694e80cec810b2ea345c960533b11"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end