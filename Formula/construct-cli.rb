class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.2.8"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.8/construct-cli-macos-universal.tar.gz"
    sha256 "37be0ef763fac770eb1f15d65d19b2bd4b90890a0c51f4d7d4aca0830012e340"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.8/construct-cli-linux-amd64.tar.gz"
    sha256 "bfac5226c575f0de26ed9799120301f6bccee322cdd3e3d1e2ae239ab5a2ab52"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.2.8/construct-cli-linux-arm64.tar.gz"
    sha256 "77dbb1adf0d767399e287c14def566493071dd7170f53711eaafbf133439c09d"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end