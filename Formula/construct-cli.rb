class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.11.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.11.0/construct-cli-macos-universal.tar.gz"
    sha256 "b38358148d350272d4932f699111e2763b459632603c5fc3d479fa81fb2129a7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.11.0/construct-cli-linux-amd64.tar.gz"
    sha256 "f25d72e5afc2316e68df5376250d278260d36f16bd6c5d2d82254324c62c02d2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.11.0/construct-cli-linux-arm64.tar.gz"
    sha256 "0a44e302f6b61ed31b582c901537d9a2dbe2e9650eda587632a5c77425f50a8e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end