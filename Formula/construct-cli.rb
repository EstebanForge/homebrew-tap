class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.14.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.2/construct-cli-macos-universal.tar.gz"
    sha256 "092ea1e5d281399dedfe1fe6f765f1be33ed1477632bcb715be42263d6eb0df5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.2/construct-cli-linux-amd64.tar.gz"
    sha256 "a6c4d9af3f3e324114284f67d11019e7f9c20b7deb0bdd8455ba41395dd5b564"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.2/construct-cli-linux-arm64.tar.gz"
    sha256 "c3099c15b57fc36cd0404f0423acbb0be347276fe70455d181d9cef13d416dbd"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end