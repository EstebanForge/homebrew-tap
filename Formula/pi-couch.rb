class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261119"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119/pi-couch-darwin-arm64"
    sha256 "7229c4991b5ac4435b318ed0be0c5ed63f37c39e57335290483ff9d1e1e69c78"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119/pi-couch-darwin-amd64"
    sha256 "4bb4c49a7797102cd2467ebb4720794a4b5ed6eb80f39ace37b6bd87307acc15"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119/pi-couch-linux-amd64"
    sha256 "f153ddc2f760c74222c4b74de3d9055de7e0bf44063b6aebcc82d694f570344b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119/pi-couch-linux-arm64"
    sha256 "9c1166a3e222844a2fde9a514047cb3268559bc359b5f60463fd8d6cc1c4645a"
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
