class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.5.1/superherdr-0.9.5.1-macos-aarch64.tar.gz"
  version "0.9.5.1"
  sha256 "0f19b1bbaacba0dbd79be6a8a110e70b75b096dcc21f1fd1218d9a3a33d109f8"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.5 (superherdr 0.9.5.1)", shell_output("#{bin}/herdr --version").strip
  end
end
