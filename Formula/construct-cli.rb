class ConstructCli < Formula
  desc "Secure loading program (sandbox) for AI Agents"
  homepage "https://github.com/EstebanForge/construct-cli"
  version "1.17.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.1/construct-cli-macos-universal.tar.gz"
    sha256 "ecf50cc3fa2698c070e1a17c92455b779eaa6553d69b2b2754fdc5712f62170d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.1/construct-cli-linux-amd64.tar.gz"
    sha256 "43b304c2426b881b4fdd03017c2a61ce76989ddd082e5dee062ed3066951c499"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/construct-cli/releases/download/1.17.1/construct-cli-linux-arm64.tar.gz"
    sha256 "ee7d5527ed2f2962b6529969bc53306d96d1ba4a94a07a892fcba4ba0c8e5a2e"
  end

  def install
    bin.install "construct"
  end

  test do
    assert_match "version", shell_output("#{bin}/construct --version")
  end
end