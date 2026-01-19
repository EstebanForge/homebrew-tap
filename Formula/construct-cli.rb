class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "0.15.7"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.7/construct-cli-macos-universal.tar.gz"
    sha256 "e7cab0af657152f2cff984bf0d76512157e84732096503291a24fa5e838de8b6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.7/construct-cli-linux-amd64.tar.gz"
    sha256 "6cece388b4bbe496469bc06eb13242ecbbcb0894ad155579836a8189313d5d07"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/0.15.7/construct-cli-linux-arm64.tar.gz"
    sha256 "ec32977a386baaff19f67daa26ad38c22fc9f6fca6628ad8e68a609edca7db87"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end