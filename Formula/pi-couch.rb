class PiCouch < Formula
  desc "Phone client for the pi coding agents running on your server"
  homepage "https://github.com/EstebanForge/pi-couch"
  version "20261109"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-darwin-arm64"
    sha256 "edca29dba14e827c8555628c315271ee58f12ac7cec82835ee07bac0e4bca8b5"
  elsif OS.mac?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-darwin-amd64"
    sha256 "5e40fed9dd8fba33d004689b254aa7f98b394e2447d45c61b6107f2037cd6532"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-linux-amd64"
    sha256 "2de6c669f44e7cd3a96e6e8a06c5535f285fee2c7a4be5b05cb653f3ba3b7536"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/pi-couch/releases/download/20261109/pi-couch-linux-arm64"
    sha256 "19adb938aa1265ff114ee03204ed3e4370eb7d1801a313612c2c93462963085e"
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
