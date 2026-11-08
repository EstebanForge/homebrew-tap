class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261108"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108/pi-couch-darwin-arm64"
    sha256 "b061232f4b3776123ef388d7c1f019509ea29ab946afffff9583c20307cd571e"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108/pi-couch-darwin-amd64"
    sha256 "01e7718e5d1b40b5231e5fe10bac32c90123cebae9fc901c6d410cdb3725999a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108/pi-couch-linux-amd64"
    sha256 "4fc3b9e92306d8c422e1d0466ec620c7fc5b6747b5383d0383165e41c82de429"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108/pi-couch-linux-arm64"
    sha256 "08513d95441e57cfac4eb540e91cd7bd3ac6fa77bee48b5dfc8ce14696ed1877"
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
