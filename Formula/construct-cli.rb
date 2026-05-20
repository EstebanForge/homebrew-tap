class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.12"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.12/construct-cli-macos-universal.tar.gz"
    sha256 "1fbde4778819eea32d618a13aeebab70cfc61d18d5513d7e3ed48993e137cc47"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.12/construct-cli-linux-amd64.tar.gz"
    sha256 "a071094e9506ebb610ef2050e27cfd7400deeb922a5edfc8d3cf8cb49cb8b593"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.12/construct-cli-linux-arm64.tar.gz"
    sha256 "45cee8391ed04c37576bcdd9931dc657b271b54ffbcddf45f247f8a4ae5f8702"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end