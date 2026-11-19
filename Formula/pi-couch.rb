class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261118"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261118/pi-couch-darwin-arm64"
    sha256 "a57bfcc47ad4f7684f9642868b59eaf46a9dced91cb501db8dd5e1aa0df0a46b"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261118/pi-couch-darwin-amd64"
    sha256 "4a517b2622e712ef7de695233dcad7edd04838a0f3152ce884fa7ce05a4e5be5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261118/pi-couch-linux-amd64"
    sha256 "d893d1edb74286d7dd28e2ff9ff3a0d22a65e90fdc00b29ed86f46addb6b263c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261118/pi-couch-linux-arm64"
    sha256 "93650d8c06c94b8b0b35f72df7eaa69b1a769ec91fae026268d77ddd11f4b89f"
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
