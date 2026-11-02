class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261102"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102/pi-couch-darwin-arm64"
    sha256 "383a3037d5710feb3c31b7978d22943785666e0750a0f8f6484efb3841120235"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102/pi-couch-darwin-amd64"
    sha256 "8e6df2aa0f41e44a67ff4adae1091acd69e61fe0fc5e109d5db21a48c83d4995"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102/pi-couch-linux-amd64"
    sha256 "54fe1b64e42c339432000d1d368b5d3f5abf65b9b5643159f6289f192f7b297a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102/pi-couch-linux-arm64"
    sha256 "bc39bfbbad26ab70142f6ecf45abee61bc47f447a8a2486b993f74c7e92ed9aa"
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
