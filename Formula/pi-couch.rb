class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261114.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.2/pi-couch-darwin-arm64"
    sha256 "9d5b69184da883e7651c97ff30535e7ead54be9e66a117123c3a6223f7899895"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.2/pi-couch-darwin-amd64"
    sha256 "a21ca66627186cce5d56aba4c18a4eeea674857ab15d4d138c615329bb23a8d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.2/pi-couch-linux-amd64"
    sha256 "007348b31c0b20af44a0e91998e3d7e37d043f47d3234dd87c1be78a01199b70"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.2/pi-couch-linux-arm64"
    sha256 "c62f2df700e439d50107328c49a832d96fbc8e8f46a22a470f43577d5bcd7d73"
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
