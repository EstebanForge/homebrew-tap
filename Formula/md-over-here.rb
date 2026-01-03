class MdOverHere < Formula
  desc "Fetch web pages and convert to clean markdown for LLMs"
  homepage "https://github.com/EstebanForge/md-over-here"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-macos-universal.tar.gz"
    sha256 "6e0309017138eafac52a5b8bd7b5f7065b39241e1f532a350c1c465060064c55"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-linux-amd64.tar.gz"
    sha256 "a1a158081aef013153b01515de699e7aba21d1301b64cef8ed813c4089b40d39"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/md-over-here/releases/download/0.1.0/md-over-here-linux-arm64.tar.gz"
    sha256 "689b6161c0a14f116087e0663f7cbbcfee6546ca94482d243ac18a0e984ecd84"
  end

  def install
    bin.install "md-over-here"
  end

  test do
    assert_match "Fetch URLs", shell_output("#{bin}/md-over-here --help")
  end
end
