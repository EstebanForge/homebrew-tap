class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-macos-universal.tar.gz"
    sha256 "786e3cc064bc72babbc816c0248fcb81313eddd47a3a992ee0dce4fc04b4e362"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-linux-amd64.tar.gz"
    sha256 "66048030e6cf33880f67e3700eab5aee187df6483e675baa960c2fec3ecf39e3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.5/construct-cli-linux-arm64.tar.gz"
    sha256 "43e75a9333e16cc9c167588653ea4b6114273c1c88093e15421c47348f4b8d13"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end