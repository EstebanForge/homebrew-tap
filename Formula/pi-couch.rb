class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261123"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261123/pi-couch-darwin-arm64"
    sha256 "48dbc32b84d0abf50e165d1be94d2e5aaa6e2c0dc5547c887a35f2fdbe60add9"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261123/pi-couch-darwin-amd64"
    sha256 "267311e50de74c1152d2388c3fce14193ffe51c4351758be15cd1e68080a2bbc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261123/pi-couch-linux-amd64"
    sha256 "15bd55ebe54fbd7f858cdbcc19a86e9cf1b9daf54b78e8e645e0c8866ee154bc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261123/pi-couch-linux-arm64"
    sha256 "9314a0bf82cad01ea3deb47f72912d8b3837e6482c51ed729616023fc507804f"
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
