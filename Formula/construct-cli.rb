class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.11"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.11/construct-cli-macos-universal.tar.gz"
    sha256 "45b6e63d7747dcc247aed76b45eace6f8233c5ddb29cbbb73a0c9a74f32d82c2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.11/construct-cli-linux-amd64.tar.gz"
    sha256 "959d076fffaa426c9e3c01d3b063ebd45371e5cf3d95bda1663bc40192c961d2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.11/construct-cli-linux-arm64.tar.gz"
    sha256 "68f877e9a9528e6b486821d718986dc8da8cada148ab74ce9a530dff80106da5"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end