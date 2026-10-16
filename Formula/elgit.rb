class Elgit < Formula
  desc "Git for humans, safely: sw, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.3.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.3.0/elgit-macos-universal.tar.gz"
    sha256 "40e403e7700f58f889344476439e20e61ef214dd5eeee7c4a4ff1637daeb98e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.3.0/elgit-linux-amd64.tar.gz"
    sha256 "26a4d4488fe44fbe2e374f0741b82cd1336c692a29caa560c6a856d29f43f1a6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.3.0/elgit-linux-arm64.tar.gz"
    sha256 "726214fa941a1f4b4854cfc466b657a48ad6491ccb703a6a20e9b0a498b58b8f"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
