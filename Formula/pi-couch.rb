class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261110"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261110/pi-couch-darwin-arm64"
    sha256 "b8b46413aa772a092c18a198cee69dee824a89fb125e7fcbc05ee8b9c52bf7f4"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261110/pi-couch-darwin-amd64"
    sha256 "a5c0a6ad3adeebe2af4f4bddc70b68bc95e14775da77c1cd69fd38fc03f9408e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261110/pi-couch-linux-amd64"
    sha256 "04c588cea6da48918993c2b53d19df89019088424b1c3b8acda0ab9cef0e5d00"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261110/pi-couch-linux-arm64"
    sha256 "c2f7336717609802b43e0f892825680a1f2fc31a07bc366824ae16c33aab3f40"
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
