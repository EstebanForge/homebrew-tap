class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261111"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111/pi-couch-darwin-arm64"
    sha256 "a4022094f42a3c9819f12cc98b8496f830e82163b411506939889087461a45de"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111/pi-couch-darwin-amd64"
    sha256 "ec41e98db95174d40079e4ed5e7188ae899ebb9211353b24556c9fd39bcb9aac"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111/pi-couch-linux-amd64"
    sha256 "c11e8b3c0fc8198ea050a9ab6c1150e33690428e98808d7e56647d32f8f58716"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261111/pi-couch-linux-arm64"
    sha256 "7710114f2cf5d4327d6d36897998ba86104454db309df5e39ba3fef4f4c923a4"
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
