class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.7/construct-cli-macos-universal.tar.gz"
    sha256 "235469de7c1dab1a558063088198f8cb4cf5065377c26bb304309c45628f3cfb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.7/construct-cli-linux-amd64.tar.gz"
    sha256 "5ccdbdd36aa0a925dee6d95779b8eb1571425e55b17edb098487261e26af9180"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.7/construct-cli-linux-arm64.tar.gz"
    sha256 "22fc4f61f2529b14b6e5a25f8f19e070f7ec1905b4dca6f3f572a116faf8d9ac"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end