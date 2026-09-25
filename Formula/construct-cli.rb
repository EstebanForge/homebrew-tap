class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.5/construct-cli-macos-universal.tar.gz"
    sha256 "f90eae145a4e666713611f27cb28f38a2357fc2dfbfc19331357e1144f2f54e1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.5/construct-cli-linux-amd64.tar.gz"
    sha256 "3049e4fab5516b1dacb1fc24db008dd53358a4ccc77d310c485f7489e607f96c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.5/construct-cli-linux-arm64.tar.gz"
    sha256 "6df39a445a306a409357b751853d5a13e142ac83f3a92572072dfc70edeef68e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end