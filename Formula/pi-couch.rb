class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261119.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119.1/pi-couch-darwin-arm64"
    sha256 "36ef140f888d4795ea788fa0abc15d547b9e2ac09f21873a12ffeee64b9b68c5"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119.1/pi-couch-darwin-amd64"
    sha256 "b9ffd69f742604aa70b2e915e16e3402dd3711b512ba85322eaf3a586e4efd1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119.1/pi-couch-linux-amd64"
    sha256 "c4b0f1f6ec0fa8413b8e842c5f5c9f0903f4bc3b528e9211dd70e826da43c25f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261119.1/pi-couch-linux-arm64"
    sha256 "9a82018c221d77f35802efc187ed3e184aafb1c08ef5b3c204d222ee5fcf9ff8"
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
