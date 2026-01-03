class MdOverHere < Formula
  desc "Fetch web pages and convert to clean markdown for LLMs"
  homepage "https://github.com/EstebanForge/md-over-here"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-macos-universal.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-linux-amd64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-linux-arm64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  end

  def install
    bin.install "md-over-here"
  end

  test do
    assert_match "Fetch URLs", shell_output("#{bin}/md-over-here --help")
  end
end
