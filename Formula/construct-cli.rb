class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.7.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-macos-universal.tar.gz"
    sha256 "847aae95e6ec708a4af50e4560b6289d53d145223b6c103ae9a56bcaf09e7e6f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-linux-amd64.tar.gz"
    sha256 "8102f76dd7c72fecbd11f32d8627c9782009e876fe08dba424fd6ae39b44c23c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.7.6/construct-cli-linux-arm64.tar.gz"
    sha256 "7d80a3e45ba985c1060386f54fb685af165f70a9ae0d6d8aef45273c98f9d223"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end