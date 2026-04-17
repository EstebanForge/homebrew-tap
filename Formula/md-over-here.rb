class MdOverHere < Formula
  desc "Fetch web pages and convert to clean markdown for LLMs"
  homepage "https://github.com/EstebanForge/md-over-here"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/md-over-here/releases/download/1.0.0/md-over-here-macos-universal.tar.gz"
    sha256 "f6b45cb74fa3102829e16d486625e9b93b0fe11099aae58c3f89e7dfd209a670"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/md-over-here/releases/download/1.0.0/md-over-here-linux-amd64.tar.gz"
    sha256 "57c81c531344a0e773b654a77290e3193e372f2d6f9f55cfca96b6cd586f20e9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/md-over-here/releases/download/1.0.0/md-over-here-linux-arm64.tar.gz"
    sha256 "226e9abed4e7130cece829a29cc127cbfe81642ba31016741eaa4d28247bb480"
  end

  def install
    bin.install "md-over-here"
  end

  test do
    assert_match "fetches web pages", shell_output("#{bin}/md-over-here --help")
  end
end
