class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.1.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.2/construct-cli-macos-universal.tar.gz"
    sha256 "8fe9e03bb19c82508f449d2f2a477fe143d32a6a3f0c0ab49891d929befb0a4e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.2/construct-cli-linux-amd64.tar.gz"
    sha256 "9626476b8b56b1d22b8e91167ca32ec290f6ceb3330ba0d04cd187d852cb6af4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.1.2/construct-cli-linux-arm64.tar.gz"
    sha256 "21e9519bae30de7e209f49ac49af6c7267062c7ebb98f606bf5b770f2f97f412"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end