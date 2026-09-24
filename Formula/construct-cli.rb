class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-macos-universal.tar.gz"
    sha256 "893b4eaa5005b2568fa8856a55895aaeeecf219175d86c4cd2eac7c9fdc06694"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-linux-amd64.tar.gz"
    sha256 "ec1367480ea63853d024ef5ae53e764468a403d3ed6215d0c104a52c7fb0182d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.2/construct-cli-linux-arm64.tar.gz"
    sha256 "544bd60f743ca15ea58c85c74ab516383447952e6b395a324307ed8d14a32533"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end