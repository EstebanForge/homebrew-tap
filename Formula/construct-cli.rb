class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.3.9"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.9/construct-cli-macos-universal.tar.gz"
    sha256 "6c7f7efa2a4e214c9bb7d83e83190438568d94881038dc5175158c51147a8591"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.9/construct-cli-linux-amd64.tar.gz"
    sha256 "53ced78bba91173d3a3970a8799e5e13ef17288cdcb6413cb97628f9c3904299"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.3.9/construct-cli-linux-arm64.tar.gz"
    sha256 "e109e4a802c2e23b7e2532ceef090d3374d26e5bd77036e838f16eb39c710343"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end