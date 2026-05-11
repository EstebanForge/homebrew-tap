class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.8.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.4/construct-cli-macos-universal.tar.gz"
    sha256 "8d27318905f2dbefa85a4c65fd4c5342e8b3d7c2b93afb01231275ccb18a22cf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.4/construct-cli-linux-amd64.tar.gz"
    sha256 "f67e2afa0c68daad6d9d163361ed0c76eedc5456077a358c11ff237e087d8144"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.8.4/construct-cli-linux-arm64.tar.gz"
    sha256 "10474ef8b575410cee4dce3bee43f2d6307efc90ff9962aca63ce1a8bbd5c690"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end