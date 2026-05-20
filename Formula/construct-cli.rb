class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.9"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.9/construct-cli-macos-universal.tar.gz"
    sha256 "3f97a4c9f93275bebbc1303c1ed7b13539f94a74b28bd97de9cd1c7a70fa820c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.9/construct-cli-linux-amd64.tar.gz"
    sha256 "ff56fdb99feaba9a722678793e39ba2e9e8b5dd83fa73da403b96316e83a38ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.9/construct-cli-linux-arm64.tar.gz"
    sha256 "a9acbfb851309434390d55aec26447d9e167a2a56a4dbf27bd101d5979db9770"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end