class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.0/construct-cli-macos-universal.tar.gz"
    sha256 "b9351d1d8be7e24dc4beec32a31a9dcd6afee260d9d256684927c58123f5cb11"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.0/construct-cli-linux-amd64.tar.gz"
    sha256 "e2826b82f620ea1cd5b97a3a493f4dd4866e4e219c4222cc7468c16ae974b677"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.0/construct-cli-linux-arm64.tar.gz"
    sha256 "f828639863e0fbaf0e9a3ed4ccc47f0aae5a6e26798d9bf33a337dc66a71eed3"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end