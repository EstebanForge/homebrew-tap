class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.0/construct-cli-macos-universal.tar.gz"
    sha256 "cad2e9cbb1a35b90e090b7ee6ca994cb5d67df6da7d9c890eab0d2d26f2d3b56"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.0/construct-cli-linux-amd64.tar.gz"
    sha256 "09239fcaa754b3e2c7ee8836919119108021fe603350731e758f22761c0ef03b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.0/construct-cli-linux-arm64.tar.gz"
    sha256 "b84fecf21469e7da3237db871c158230d9f92d547da7e758d341e17600b6ddda"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end