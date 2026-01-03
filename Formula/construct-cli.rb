class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.11.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-macos-universal.tar.gz"
    sha256 "b33e0de1239a055c9a3c72bad6d79940edb1c84b896bf59b409df4d0a49f43bc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-amd64.tar.gz"
    sha256 "c8a76264c5c170beac4a93bb180d0e531fa36b8a8e39debc19fe953c49225d1e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.11.3/construct-cli-linux-arm64.tar.gz"
    sha256 "c95eba9c3c8245b039c3bae759e560a61155ac03e5f4992b9d68d64ff699b1e4"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end