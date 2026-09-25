class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.8"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.8/construct-cli-macos-universal.tar.gz"
    sha256 "4951eb53c3fe167ea8e032613d46ba57daa5d7598b9075a62254e75f8c53a0df"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.8/construct-cli-linux-amd64.tar.gz"
    sha256 "5a338c114ec7c60928f5e123ae7fe9b7aa0c715e903b3815308bad06bfbfb121"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.8/construct-cli-linux-arm64.tar.gz"
    sha256 "23ccaf0da8f52449cc78099b3fa43c9edd1ce6cbdc05ba66d71c06984c792db2"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end