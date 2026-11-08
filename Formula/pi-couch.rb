class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261108.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.2/pi-couch-darwin-arm64"
    sha256 "7f644a243ef22f9c80c75c23f6af6f52846e84d622e9fe3705f5e5596d6c5656"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.2/pi-couch-darwin-amd64"
    sha256 "29e3f2f0df7ba548c3c43bedb5004adf72b3a6a64c09a124154ed6749ea3af2c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.2/pi-couch-linux-amd64"
    sha256 "0f67bb812c1359264ef8c5bac24cb16e5fb8f547634cb324e41eb3b51b6d8421"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.2/pi-couch-linux-arm64"
    sha256 "82824cc999bf8e534bb0b522e914324b7e4efbc0203f96f07d0fd0d22bb43cd9"
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
