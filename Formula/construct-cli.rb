class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.14.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.0/construct-cli-macos-universal.tar.gz"
    sha256 "5fdf7cf216297bf6147907b8ea9151398fdc6d4566971dc10446009cf5d62515"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.0/construct-cli-linux-amd64.tar.gz"
    sha256 "e545b90451fe0d6b4b8b8f82d57193f0c45aec6a54ecee6a59644f1c65e9e236"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.14.0/construct-cli-linux-arm64.tar.gz"
    sha256 "3ba857be4f72fe664c95701ce710a7edd5ff71a2516f1bbd69619be5a91852e6"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end