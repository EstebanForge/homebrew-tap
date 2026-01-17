class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.3/construct-cli-macos-universal.tar.gz"
    sha256 "06e8e1dcba2235bff7c71f1156cb1920bd2a3ae8755ad6871865d7039635521d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.3/construct-cli-linux-amd64.tar.gz"
    sha256 "499d63f85e537fced1c0a210ae36074bd76139f89b1b6e2bae089cdd8bc92cd7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.3/construct-cli-linux-arm64.tar.gz"
    sha256 "af8ddac31851ce3a625056baf615dc21136161cf9fe23dd8623e7e59929753e5"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end