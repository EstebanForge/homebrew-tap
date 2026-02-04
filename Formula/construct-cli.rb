class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.4/construct-cli-macos-universal.tar.gz"
    sha256 "19e550e08c8ea5481918b3dc23532a3df17be9421a9ee0461e5f56db8ff6c6de"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.4/construct-cli-linux-amd64.tar.gz"
    sha256 "fe99e3bc670585ea1aabe88174be732faaf27d8d0159535a053d8f2407e708a1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.4/construct-cli-linux-arm64.tar.gz"
    sha256 "8a8e72fa2c4dc7221ef59004d36d50aad87530200c75ee3b6100c69b4a20a139"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end