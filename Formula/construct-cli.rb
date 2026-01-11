class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.14.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.1/construct-cli-macos-universal.tar.gz"
    sha256 "d86e1cb0435b993dc52d8a5e419c41f95feee910673a8984d118a0779315bf80"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.1/construct-cli-linux-amd64.tar.gz"
    sha256 "6e081168f309ee3792f6e40663109a64489db6c109e600b973d039108ed99dc7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.14.1/construct-cli-linux-arm64.tar.gz"
    sha256 "426d4cfdabacedbb95da0aefceb722a94194f7bd4e75b3d8a736f7ad47cb3591"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end