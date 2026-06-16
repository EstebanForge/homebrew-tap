class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.9.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.1/construct-cli-macos-universal.tar.gz"
    sha256 "0bc61b1dcd37551fd623097fad074ddb16e252e6e340df25178eb0986e99e760"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.1/construct-cli-linux-amd64.tar.gz"
    sha256 "12563b99071bac834cdbc12b9455edd59f61ccc100212d81b3aa45eef1505430"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.9.1/construct-cli-linux-arm64.tar.gz"
    sha256 "45a207454d47fd7f310e7fe727e34042d0b40b5e0db650a0c065946fdc28c087"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end