class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261121"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261121/pi-couch-darwin-arm64"
    sha256 "fb0c22cdf788014c7ebda760b5cdf88d6790e03b2358b100b834926e8769c048"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261121/pi-couch-darwin-amd64"
    sha256 "6f3482873d63ba99cf715afc12a08585faf3e4f3ab7923bacf386ed7990b7cd0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261121/pi-couch-linux-amd64"
    sha256 "f50ca0f4f1463aaa0368387969401ba4321e206a12a9b852c2571e421391a948"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261121/pi-couch-linux-arm64"
    sha256 "7e47f819fab291d57d15087a19ab91154461e363022e27515f2612a3e1207bb1"
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
