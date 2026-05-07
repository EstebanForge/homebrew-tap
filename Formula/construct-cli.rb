class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.7/construct-cli-macos-universal.tar.gz"
    sha256 "d8b04cb916ad1f0712e76b217741994a0f44c994f2662442039196d143eb72a5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.7/construct-cli-linux-amd64.tar.gz"
    sha256 "31de37f9b279bf6573c3c188be9e1cba98d5d1f492215bf776d43bc88157bd2f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.7/construct-cli-linux-arm64.tar.gz"
    sha256 "bef5979a7511cf7582bb6bfe8599ba0a305e6ac306c68572b888d9048a1c0686"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end