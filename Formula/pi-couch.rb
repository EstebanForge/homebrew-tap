class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261114"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114/pi-couch-darwin-arm64"
    sha256 "c0b0ab5d2058867f8d25b47e884c8407431a8748c8332821d18de498ffae122f"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114/pi-couch-darwin-amd64"
    sha256 "5bb102f6d0694436fe7825f3015e2a295b90163a95d6d99f5a039979bde7ffa9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114/pi-couch-linux-amd64"
    sha256 "a6f3cef69c7aac6a5498d6f8f1f9fd462b5b15e47a87a26a7209e0d5919eda73"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261114/pi-couch-linux-arm64"
    sha256 "9b988998fa53732131f0064950e7f7d933bc73389a5dd5337fc99e82d43f41b0"
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
