class Elgit < Formula
  desc "Git for humans, safely: sw, sync, publish, unpublish, undo, branches"
  homepage "https://github.com/EstebanForge/elgit"
  version "0.1.0"
  license "MIT"

  # sha256 placeholders: the update-formula workflow rewrites url and sha256
  # on the release dispatch. Do not install before that runs.
  if OS.mac?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-macos-universal.tar.gz"
    sha256 "dffea59bd3adc8be14cae28c21a2499d9e6a78e0b57e988f76f9afb2c4f47520"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-amd64.tar.gz"
    sha256 "1caef43798ab936f3f562a581a9627c4b3b949ad06756beb7baf2653c5a3c181"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/EstebanForge/elgit/releases/download/0.1.0/elgit-linux-arm64.tar.gz"
    sha256 "7793a36ed0784f7a0932a7fbbe0ff2b409eae4706d7f586915123bbf09424bc6"
  end

  depends_on "git" => [:recommended, "2.24"]

  def install
    bin.install "elgit"
  end

  test do
    assert_match "elgit version", shell_output("#{bin}/elgit --version")
  end
end
