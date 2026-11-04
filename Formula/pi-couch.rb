class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261103.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103.1/pi-couch-darwin-arm64"
    sha256 "0af79c6c6f86bda576385acf3ecf431d5d0131dbcbcabd189e62c8ae6ced65ab"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103.1/pi-couch-darwin-amd64"
    sha256 "239189bdaf684bad9b65c4512cdb08fa63b94c47ca475c74c4136fa68c432bbd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103.1/pi-couch-linux-amd64"
    sha256 "56fb1e52112ffbf2698b0dae3aecbbd472a1105a031f9aabcac4769fe1701512"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261103.1/pi-couch-linux-arm64"
    sha256 "7234be751e5e3562c57dc550251536d794c11a596686906da34255ec7e70f813"
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
