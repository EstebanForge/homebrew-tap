class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "2.0.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.1/construct-cli-macos-universal.tar.gz"
    sha256 "c20ed7cb1283a100470bfeec20ec1b90950fb4dbe5b509b03ce944b374de0c88"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.1/construct-cli-linux-amd64.tar.gz"
    sha256 "69e1f5daecbae4c30a99ad8cc1d6f2d69f28e87d2501181b600271332c8a44ff"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/2.0.1/construct-cli-linux-arm64.tar.gz"
    sha256 "18657d75e2146ef673b34cc08fb1268f1441df55f7cb19c9fe0fb753c151f8c8"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end