class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261111.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111.1/pi-couch-darwin-arm64"
    sha256 "214c71749f93e89f47cfe2ed221d13b82335f9a4848ebfb27dd31c5b2af6f7dc"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111.1/pi-couch-darwin-amd64"
    sha256 "bb2354ab6b65729e83caa8a5279a3c226dfcbc79f8bd8f12546de358be61c463"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111.1/pi-couch-linux-amd64"
    sha256 "c9ab523fad79ebb46870372ab2fce07fb56b3ff91a0ae105b86d57fd2c0063ea"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111.1/pi-couch-linux-arm64"
    sha256 "59184eea9eac2fc653d722b7d77ed8da8bcefb47a53ec6ad76c00ee7472a144f"
  end

  # Bare single-binary release assets; the bot hashes the downloaded
  # file directly (no tar.gz stage).
  def install
    binary = Dir.children(Dir.pwd).find { |f| f.start_with?("pi-couch-") }
    bin.install binary => "pi-couch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pi-couch --version")
  end
end
