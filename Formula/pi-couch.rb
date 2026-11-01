class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261101"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101/pi-couch-darwin-arm64"
    sha256 "d3e7a540068617a04bbb55b68aecd1a15eb95d2d7c729a84ec3499baf1158f0c"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101/pi-couch-darwin-amd64"
    sha256 "2b1e64c54b70aa99f2b2bc49c35afe579bfbfc3165d7036ede774e6a964d62f6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101/pi-couch-linux-amd64"
    sha256 "9527b6b9e2d73c1a812d72c47e8196ca9790b1a812ec7ffc4eebd67808fbb0e4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101/pi-couch-linux-arm64"
    sha256 "5cf38127d398bcf78b5c856c8f3327f9a4bc6ea00135306ca68a20d418bb3747"
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
