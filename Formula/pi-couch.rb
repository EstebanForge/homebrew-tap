class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261101.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.1/pi-couch-darwin-arm64"
    sha256 "28b872fd93231d8f7b530b61cd3a26509471f63417b07c13db5d31e5f12caa20"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.1/pi-couch-darwin-amd64"
    sha256 "b5758a300f849cb3b667671c813a89d9d26e0416d565ecaab5b33718ff164369"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.1/pi-couch-linux-amd64"
    sha256 "9b2fa2d5f1a376dcecd94935ee500dbd0c85b06b38d273ac776af633ec1f73ea"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261101.1/pi-couch-linux-arm64"
    sha256 "c2f8caf45c22651c076340223a8db69d4a6852d4084329d8b0dbfd5b6c621636"
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
