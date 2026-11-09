class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261109.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109.1/pi-couch-darwin-arm64"
    sha256 "533bacee0b0c9e2fb0b80f30dc0d675114965e626ceec46198c1cf3f6126a2ee"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109.1/pi-couch-darwin-amd64"
    sha256 "ba47c998e995a759cd1ee33e9cbd3eb5063088ab5007ba1d7f05ea5a42428997"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109.1/pi-couch-linux-amd64"
    sha256 "58bb0637a0c3377961ac1cc9217d9817edcdf6a1672381168cacfdc09d27c4bf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109.1/pi-couch-linux-arm64"
    sha256 "b73a6b14aaff5d3b1a6900bad39485a7512a6c1930dea0de31ecdb2b580192ee"
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
