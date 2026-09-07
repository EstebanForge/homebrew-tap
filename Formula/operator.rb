class Operator < Formula
  desc "Zero-cruft tmux session multiplexer: guided TUI for humans, JSON for agents"
  homepage "https://github.com/EstebanForge/operator"
  version "0.1.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-macos-universal.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-linux-amd64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-linux-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  depends_on "tmux"

  def install
    bin.install "operator"
  end

  test do
    assert_match "operator version", shell_output("#{bin}/operator --version")
  end
end
