class Elgit < Formula
  desc "Git for humans, safely: sw, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.1.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-macos-universal.tar.gz"
    sha256 "f6d2ca63ae8d800dc4d75fe14f0397161e085b96b54d10d9ae367bdb2145aee4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-amd64.tar.gz"
    sha256 "9c2d68dcc981c37b93689c09cb6f397a6aab604503316271c5ffc974877ec1f1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-arm64.tar.gz"
    sha256 "9f8aa194e7090c4bd0f543213db0c71165da998f24394a0443282ca032953f84"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
