class Operator < Formula
  desc "Zero-cruft tmux session multiplexer: guided TUI for humans, JSON for agents"
  homepage "https://github.com/EstebanForge/operator"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/operator/releases/download/0.2.0/operator-macos-universal.tar.gz"
    sha256 "a1983c8f3e59da5fc07e6b227ac209bd926eeb2703be283e185d58e1833438f7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/operator/releases/download/0.2.0/operator-linux-amd64.tar.gz"
    sha256 "7eab92c9b55705d1dc1dbdee437caf3e1c47e7388588efa65e906fa78b08ef52"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/operator/releases/download/0.2.0/operator-linux-arm64.tar.gz"
    sha256 "7b7a95edefe7dce3e4da3e6b0951e928291b6334c2f0f4d721e71f227fb98add"
  end

  depends_on "tmux"

  def install
    bin.install "operator"
    # Homebrew refuses to link over a foreign file in its bin dir, so a
    # pre-existing brew-managed opr fails the install loudly instead of
    # being replaced. Links outside the prefix (e.g. ~/.local/bin) are
    # never touched; PATH order decides. No conditional install: the
    # superenv PATH hides user dirs, and skipping on upgrade would leave
    # the previous opr link dangling.
    bin.install_symlink "operator" => "opr"
  end

  test do
    assert_match "operator version", shell_output("#{bin}/operator --version")
  end
end
