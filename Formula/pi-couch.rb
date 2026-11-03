class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261103"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103/pi-couch-darwin-arm64"
    sha256 "71ac192d0b4ea7822e628d0f3ac9937701c2f69949ca0ddf9c22f3ab4d1079ed"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103/pi-couch-darwin-amd64"
    sha256 "cfb6e95c0ca9c69f06697ea3eaae660aeb87a190a2a5645d5fc6c5dcf0163911"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103/pi-couch-linux-amd64"
    sha256 "efb457f7f764dde3b9f96e67e7ac7d2d0366df6608b8229f54edfd4caf242a9c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103/pi-couch-linux-arm64"
    sha256 "2603740dd2de3e759a7dec7ddf52e8d0a248568435a5b28e331c556ddd2780e8"
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
