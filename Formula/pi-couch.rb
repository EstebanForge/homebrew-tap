class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261120"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261120/pi-couch-darwin-arm64"
    sha256 "48b982a3a276747e90f7d8f55dcedc74b147c592d25c0bcf74a35257d513eaef"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261120/pi-couch-darwin-amd64"
    sha256 "9ae07423da861dd2a271c2996a93fc4081648b0f5a911ed274ceed0f25e03e77"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261120/pi-couch-linux-amd64"
    sha256 "47d6852303648586ecfb46fa46bea1fb5d697ed9a6b3b4632b20170997b1d337"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261120/pi-couch-linux-arm64"
    sha256 "23abbf59d2aa0699b2dda6e8798ed490c24e46f53cf74c762a7f48e50ee02697"
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
