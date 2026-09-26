class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.9"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.9/construct-cli-macos-universal.tar.gz"
    sha256 "ce28035cfd9995b2f69801b5aef25b23258f9881fcc8daa2478fb6e8854c6d1c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.9/construct-cli-linux-amd64.tar.gz"
    sha256 "944ab3af7945ee767eac51de93efdd47326c3f922aeae4b7ba2a0ce4e3483581"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.9/construct-cli-linux-arm64.tar.gz"
    sha256 "4d8e5053cb3b6518eabed782f2f0212c2e9b13ff5d2cceaf07ca5cbac574ec86"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end