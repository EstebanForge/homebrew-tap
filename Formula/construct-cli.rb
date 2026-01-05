class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-macos-universal.tar.gz"
    sha256 "98379d29772313b67e4c509870c7be267625e37e6e79dc7cd3df31f94210ee0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-linux-amd64.tar.gz"
    sha256 "b2e3e67f7b77694c43b774161b563ba4fe91629d008775f1bab43cbbddf3f384"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.4/construct-cli-linux-arm64.tar.gz"
    sha256 "6148dbe131428c3bfaadf5993e554165fcea001a3644884511a5ba54237657d7"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end