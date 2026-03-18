class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.4.6"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-macos-universal.tar.gz"
    sha256 "4996f5a3ebf3dbcbf111affd70973d68cb1b27122b0e76d2d247c11f2dbc61c7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-linux-amd64.tar.gz"
    sha256 "dd53ff934ba8754733b57f4378581d4dd18cc42dbb20627934672bac2c0afaa4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.4.6/construct-cli-linux-arm64.tar.gz"
    sha256 "34dafec415b33b1dc013ff646818ff41fd1672cbf8f5ef836dca51b51a2adda7"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end