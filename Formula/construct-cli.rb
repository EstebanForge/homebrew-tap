class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.18.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.0/construct-cli-macos-universal.tar.gz"
    sha256 "f463daae9bab45bc2cb3fcbe0e60013cc25f6069461d6fb381c3a0d05cee2504"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.0/construct-cli-linux-amd64.tar.gz"
    sha256 "a6ef98364a02d6479be046cfcd068b1e420e490b640bf8f259e55aa32c7941b8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.18.0/construct-cli-linux-arm64.tar.gz"
    sha256 "92fa010519a402c87a9dd846bbd73457493a64ebebfd49da4ac3e5891e80d4bd"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end