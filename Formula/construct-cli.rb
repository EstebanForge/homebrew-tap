class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.3/construct-cli-macos-universal.tar.gz"
    sha256 "200df6dbe7b9da98ea208fb180d8bd4bf58ec631279db0e11c44825617a56343"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.3/construct-cli-linux-amd64.tar.gz"
    sha256 "24efe31e8119af53564670c5b78d8be2062edba5f88a4edef137b1d0a7ea183d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.3/construct-cli-linux-arm64.tar.gz"
    sha256 "5b76d7c5827bed47926afd48902cdcf79d9974fa9f3f3a41f54182a3962d2c21"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end