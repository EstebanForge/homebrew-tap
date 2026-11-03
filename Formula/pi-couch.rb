class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261102.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102.1/pi-couch-darwin-arm64"
    sha256 "077bae3b46aa1272da2efcede55e9faa93ae837099db076134310abf301b6605"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102.1/pi-couch-darwin-amd64"
    sha256 "56ec731b56be5db98fb7bbe3b15136583717e8403176b48a699ecb7f243eaa94"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102.1/pi-couch-linux-amd64"
    sha256 "6fe627807b96dfc6c58bf2038692a24dc8bbbe776b949b44e202b07b8b0050ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261102.1/pi-couch-linux-arm64"
    sha256 "6acf06963d95c8f9289863d144af993a16a8817d2f4cbdfb64d97ac0abbbf6cc"
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
