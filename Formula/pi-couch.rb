class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261128"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261128/pi-couch-darwin-arm64"
    sha256 "90f6c4f96f6447a0b625145605881142e3c7b7fb6e4c2cd0f70473c7ff681a4d"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261128/pi-couch-darwin-amd64"
    sha256 "5ee48bd331be0213f9cd69a68bd8e009ba2ac7c79529a8f069f0ac8d6211f553"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261128/pi-couch-linux-amd64"
    sha256 "e850855aabddc4875e107d183a315f50d9450fa9dd33389108bc3ba7e4338e1a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261128/pi-couch-linux-arm64"
    sha256 "0c68215626e2f554eb877824ceb7ba9af19e09f2bf64d254333933b57fb491eb"
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
