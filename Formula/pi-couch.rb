class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261031"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261031/pi-couch-darwin-arm64"
    sha256 "24542f9b0d9198681b2852605823dafa946d9a0dcab632f6f8521546d5ab9024"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261031/pi-couch-darwin-amd64"
    sha256 "971842a271ceee528bbd5f5c9e77b48982fa3f0c77b2ff9add93e6dff7aad35b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261031/pi-couch-linux-amd64"
    sha256 "560c006f6be65ed59efc1aadd1ab19d1ec656e850c3cb824fb5217db1d835a6f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261031/pi-couch-linux-arm64"
    sha256 "ca12b54382b703094eeb4d27aee0cd0e6395591dd0f9d67b236b71b4ad5104eb"
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
