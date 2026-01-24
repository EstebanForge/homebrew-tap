class MdOverHere < Formula
  desc "Fetch web pages and convert to clean markdown for LLMs"
  homepage "https://github.com/EstebanForge/md-over-here"
  version "0.1.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.1/md-over-here-macos-universal.tar.gz"
    sha256 "0a638dffdfb95662dedf8e1d78802a1c3f111d672757761c8e9f3e9d3d6776b6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.1/md-over-here-linux-amd64.tar.gz"
    sha256 "75868ea2d1bee39d76c79ccf1be294826ca01399405175d334c74888b74cb6ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.1/md-over-here-linux-arm64.tar.gz"
    sha256 "afcc0200d13e39190314cb74b0fefeafc96f3e80a1e438bb3fd7cf8064e2b480"
  end

  def install
    bin.install "md-over-here"
  end

  test do
    assert_match "fetches web pages", shell_output("#{bin}/md-over-here --help")
  end
end
