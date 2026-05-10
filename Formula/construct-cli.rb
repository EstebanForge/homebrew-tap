class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.3/construct-cli-macos-universal.tar.gz"
    sha256 "e22f95a743132b894009ead72251f4d4680296ea8e97764c46c3fb2e1de0c9b7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.3/construct-cli-linux-amd64.tar.gz"
    sha256 "05708f8e1e09e82c9c4cd942f1e30281547be03de7f20dcf4b1247ce7f32b89c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.3/construct-cli-linux-arm64.tar.gz"
    sha256 "a2e89e1bb0cecf20c5bd4c042169437fa9ee7626d872d088dd7a8aead7f2875e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end