class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.9.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.2/construct-cli-macos-universal.tar.gz"
    sha256 "348c4934bc288230ae34c7da304e4f81847b0a281a5b1f773567e3ef61de4004"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.2/construct-cli-linux-amd64.tar.gz"
    sha256 "da274399291c5b7333e7b80a51083e3cd64ecf5d2a9f604e5320455d1a0262e6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.2/construct-cli-linux-arm64.tar.gz"
    sha256 "eed11ccb414c15bf331cbd2ed12dfea5cb4245aa34a23890588d4f87128dfb68"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end