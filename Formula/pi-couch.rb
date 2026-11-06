class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261106.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106.1/pi-couch-darwin-arm64"
    sha256 "d2b068acfbf2664a5008b1d752bb843d4d583761e9a2dd83aad8b89c59806c11"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106.1/pi-couch-darwin-amd64"
    sha256 "2b552779ca2a3da558dc371162e90554e2c9319b2297bf097dcf1514579f14ea"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106.1/pi-couch-linux-amd64"
    sha256 "9b297e0caff8b3249aa31c3ee643ddb4762e3c9fdb49bf108cd9adf09c720302"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106.1/pi-couch-linux-arm64"
    sha256 "5c5a5aeb02663b09c1a2ce1af31c35fbbb61dc96ed65690a0b52d248c5e8d7bd"
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
