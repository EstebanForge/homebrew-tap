class Elgit < Formula
  desc "Git for humans, safely: sw, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.2.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.2.0/elgit-macos-universal.tar.gz"
    sha256 "c5501499ecd255b57fb41bb6951de8d9de0aafa00d81e3e3aed2d7a302b72e96"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.2.0/elgit-linux-amd64.tar.gz"
    sha256 "16b2a46b62cd4180fc77631c0cf397b2fdf778bc6943335a4851c046d242f807"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.2.0/elgit-linux-arm64.tar.gz"
    sha256 "69b15dc5fd94a7f52453f80f60049a487b690948c7cdda05dd8f3507378b2060"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
