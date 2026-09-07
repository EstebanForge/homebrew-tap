class Operator < Formula
  desc "Zero-cruft tmux session multiplexer: guided TUI for humans, JSON for agents"
  homepage "https://github.com/EstebanForge/operator"
  version "0.1.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.1/operator-macos-universal.tar.gz"
    sha256 "3223f1ecd8ccdccbaf4af7b608a0e9eeb7946ede7b44f28b8ae77046f6b15d27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.1/operator-linux-amd64.tar.gz"
    sha256 "2687332e9254bf0b2f4907aa0fb8151458d2b4d4a362caf2e3af1cc672031c16"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/operator/releases/download/0.1.1/operator-linux-arm64.tar.gz"
    sha256 "c5209526cd047332dfd80b4e5e7229ff045be8b6e5f2912913cbf4a44fe0908e"
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
