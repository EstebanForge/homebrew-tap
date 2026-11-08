class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261108.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.3/pi-couch-darwin-arm64"
    sha256 "4d0d9e75a0c22586fec50071f3894fb487297c241c39556cf9bb9a6aac53e03f"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.3/pi-couch-darwin-amd64"
    sha256 "0be8febcafc107a8324dfb712e0a139c4337f161454fd3008c381b7fbf3e9c96"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.3/pi-couch-linux-amd64"
    sha256 "2618aab363743190d14e1dd6f6affbdbe91f0c609db87233821fed2b6834b4f6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.3/pi-couch-linux-arm64"
    sha256 "82f92deddc5172754c7cd1c513e9ca304d3f51dc6f4ee3fb8dc71e1d2a657530"
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
