class Elgit < Formula
  desc "Git for humans, safely: switch, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.1.0"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the first release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-macos-universal.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-amd64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
