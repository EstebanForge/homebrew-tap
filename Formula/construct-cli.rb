class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.3/construct-cli-macos-universal.tar.gz"
    sha256 "f139a5681156bf79c46dc9162994cf380ee36f13fb02adfc18f228e641461ae6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.3/construct-cli-linux-amd64.tar.gz"
    sha256 "27594fe552aa1c790de8b637410ab9bc647781c84742c1d256f6d043b061d59b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.3/construct-cli-linux-arm64.tar.gz"
    sha256 "5fb8408ae440051d75254c3b75abe1fb6252eb51ba0a92ff6e0b0924cd38e14b"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end