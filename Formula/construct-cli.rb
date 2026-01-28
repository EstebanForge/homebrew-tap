class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.1/construct-cli-macos-universal.tar.gz"
    sha256 "f7d457240263331c0feb7559516a327aaccfafdded748f0e440845629758c30e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.1/construct-cli-linux-amd64.tar.gz"
    sha256 "f68ee96342d9f5b3288fba4e3d0fd44427edca1d3ab7cf809aa1cdc67f022859"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.1/construct-cli-linux-arm64.tar.gz"
    sha256 "4d6b7f1b63e614982acebf9d7d50f31bb45a08c33b79865c42cc466aca789b00"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end