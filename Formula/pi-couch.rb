class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261108.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.1/pi-couch-darwin-arm64"
    sha256 "74c65913ec2221cb1e444bed9a7da39217078f54ef1384884b13ff351db8ac87"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.1/pi-couch-darwin-amd64"
    sha256 "1791064f0cc4e16aad16f828c982e25dede52212f888c00311981ae8968bf92d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.1/pi-couch-linux-amd64"
    sha256 "083eda8c95f31fc1d7c5597088fdccddf8cebc970a612e141fc72934ade5d040"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261108.1/pi-couch-linux-arm64"
    sha256 "faffe4d51427a2ed8550c70b7b1600f87e022f3ff81161921e661d44f762351e"
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
