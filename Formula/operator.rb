class Operator < Formula
  desc "Zero-cruft tmux session multiplexer: guided TUI for humans, JSON for agents"
  homepage "https://github.com/EstebanForge/operator"
  version "0.1.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-macos-universal.tar.gz"
    sha256 "67f6c251dd12bd157a1c15a4a064bd14137526a5b937561149a82dcc915c7b82"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-linux-amd64.tar.gz"
    sha256 "f0dd976d83862a03d3c0244f36ed0e4a65ecd9d65e69889b65bcf2a172dd10c1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.0/operator-linux-arm64.tar.gz"
    sha256 "ee42460c8f0f07f6f8b33376ec25e4432da97c19cce1a017407668870b22446b"
  end

  depends_on "tmux"

  def install
    bin.install "operator"
  end

  test do
    assert_match "operator version", shell_output("#{bin}/operator --version")
  end
end
