class Elgit < Formula
  desc "Git for humans, safely: switch, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.1.0"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the first release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-macos-universal.tar.gz"
    sha256 "0062ab9c8537a1c824b2361de166b26628f5319725c9db5c43ba279a754b0fcc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-amd64.tar.gz"
    sha256 "b73d6bb87d938f97ce2443a53c2605cd2a19cf63cdda39a2a841bade1cc54b40"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-arm64.tar.gz"
    sha256 "c57767840dd34360f5a1cd8c636d6734268028b755c7ecfb649e185b3471a139"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
