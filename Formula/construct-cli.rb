class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.5/construct-cli-macos-universal.tar.gz"
    sha256 "dfac67d156f3dbd6fb38a3836d2c5e8c35202f5dc635175e3b29ebc1bcdcea24"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.5/construct-cli-linux-amd64.tar.gz"
    sha256 "1162d3155dfe71629438b5a05ce8a1ef2262bedb9e797801c2a17c7029a5caaf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.5/construct-cli-linux-arm64.tar.gz"
    sha256 "ecb2467a536766c26c33c3d9302e5be38cb634a900f6a40de473b649ae81328a"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end