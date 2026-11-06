class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261106"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106/pi-couch-darwin-arm64"
    sha256 "c5da3222461a57047266f3f7a95d0230440b1989f8fcd9f20202c6d2d39404da"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106/pi-couch-darwin-amd64"
    sha256 "415c1e834c792b657ff19fcacade96a44e575ddb404798b5da236eafcb2897f3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106/pi-couch-linux-amd64"
    sha256 "e9b60fbc3dc096284efb3a4934bc7de3e6cd7fb38e759494737fc7f5b7b61939"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261106/pi-couch-linux-arm64"
    sha256 "97e5bff5b66592e206356bda5e3295fc65b8fb81d9577fe43185c1ae35e42155"
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
