class CodexInterceptor < Formula
  desc "Universal API translator for Codex CLI"
  homepage "https://github.com/EstebanForge/codex-interceptor"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/EstebanForge/codex-interceptor/releases/download/0.1.0/codex-interceptor-macos-universal.tar.gz"
    sha256 "cabcc9dca8b99a21f119b84deca34adbffc92b66193f7df87e6eb779efffe742"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/codex-interceptor/releases/download/0.1.0/codex-interceptor-linux-amd64.tar.gz"
    sha256 "44804f56f76ee1d8962e2d442467c0925f1729c5ff65625844dd27e7f496c8a2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/codex-interceptor/releases/download/0.1.0/codex-interceptor-linux-arm64.tar.gz"
    sha256 "a18add1ee87de71fb2a3a4c47bf1ad8f925676fc4e25811e770768a83a7ba2fb"
  end

  def install
    bin.install "codex-interceptor"
  end

  test do
    assert_match "version 0.1.0", shell_output("#{bin}/codex-interceptor -version")
  end
end
