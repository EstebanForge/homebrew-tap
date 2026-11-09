class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261109"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-darwin-arm64"
    sha256 "1e4ecf9655f4ade070933aba6f3e23c0bf2a57d9105c354f305268f7b5e5b239"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-darwin-amd64"
    sha256 "e9a006f8249a4617fe5359a950402bc334ec605e199a1e505ea8cc1cd864c319"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-linux-amd64"
    sha256 "36623350a9f1dfddea1285f5ffa1be94d3e4e18dd5c9aaf12402d84ff72e42e1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-linux-arm64"
    sha256 "7af52fb134c77dfeba6d582f91361efe4aef0f5a7b2bbc1ea2c41b2665ad2a25"
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
