class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261116"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261116/pi-couch-darwin-arm64"
    sha256 "fed4bcaf569951001b6d2388cf28e8cc3fd7f907e34a8f2247ed4080521b2704"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261116/pi-couch-darwin-amd64"
    sha256 "98f0139dd8664eb27efb434cddf64cbeed0a2fe770369ceed2239d8822066bb3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261116/pi-couch-linux-amd64"
    sha256 "90de7f2264e250d1cdcc965a58a610f8dafc11f8d071dfb5dd9dc4107e7910c3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261116/pi-couch-linux-arm64"
    sha256 "c4b2eda6c522b2b5e8a83dee641183db8da35e8646ed3d6488883be30aa8ea80"
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
