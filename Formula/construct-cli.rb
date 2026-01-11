class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.14.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.2/construct-cli-macos-universal.tar.gz"
    sha256 "e212fc7ebb4a7d21181975f3d54c4145e5784d5b4fe7b7c6321e0f337a47752a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.2/construct-cli-linux-amd64.tar.gz"
    sha256 "6353c1032666ab29b74aa9ed68d3fb2017727cb156495e2937dbdb3a823ab9a1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.2/construct-cli-linux-arm64.tar.gz"
    sha256 "1d6fef05964f2706f1e4dc5609382021cfe8b2281714a4eb4b111b891b40ce9c"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end