class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261101.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.2/pi-couch-darwin-arm64"
    sha256 "ff520804c3f770da1ea5f82cec0d7dc849899d886429779e5610e3107d300b42"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.2/pi-couch-darwin-amd64"
    sha256 "aec37d2ac498f7a55bfa173e79f709bb29cece7ac9dcd2806c3845f28df9c7e0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.2/pi-couch-linux-amd64"
    sha256 "cb86da593f3552c955206815402b468cd5b993548dbb6eb5a44d964a6fc49090"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.2/pi-couch-linux-arm64"
    sha256 "9941643b6dcb836b3ad9e55b6edc7194ff5dc251cc8b855e892c37a7e80cf1f3"
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
