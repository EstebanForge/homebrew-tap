class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "3.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.3/construct-cli-macos-universal.tar.gz"
    sha256 "10a3aa4488a40076070f504b1aed2d5b1ee06e2ca14a409ed9e141976d513636"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.3/construct-cli-linux-amd64.tar.gz"
    sha256 "fb99fd00dc01123686b8bc584c6570df93229357507e192489038f43ad928657"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/3.0.3/construct-cli-linux-arm64.tar.gz"
    sha256 "ba2511ee5c18ada5e207773cf3d5ac402c7be682934a809b9854663562184816"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end