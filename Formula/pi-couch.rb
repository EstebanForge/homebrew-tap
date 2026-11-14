class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261114.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.3/pi-couch-darwin-arm64"
    sha256 "1433738f2581bac2207b35b62ace965a6aab49748ed4126a5bc7afa92af3f1d2"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.3/pi-couch-darwin-amd64"
    sha256 "c0b2fb28bd518a0715b78aab1bf98274731b89e99ae054c9c36ad537588d26ef"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.3/pi-couch-linux-amd64"
    sha256 "9cfd20e6f81585c398fd4e813e515529ce4b9cbc26305ed96305f24d9f39732f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114.3/pi-couch-linux-arm64"
    sha256 "cc1e45f851ff6e713b10311eba49978ade2f7c815d8ea291bf818686fa68b8ae"
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
