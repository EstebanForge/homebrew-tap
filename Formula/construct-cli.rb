class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.18.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.1/construct-cli-macos-universal.tar.gz"
    sha256 "c9bf9a7198404460952d27c68948cf6ea65ba3898a653a9b59e731e1a165d792"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.1/construct-cli-linux-amd64.tar.gz"
    sha256 "851b5dfa2945560907cc63a6db582eed13fd5a41fff4969272552c43d10dd72f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.1/construct-cli-linux-arm64.tar.gz"
    sha256 "4683b4b869b4988a443f259a00361c7fbb8e8736ee2f3aba981355c1abc56b8a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end