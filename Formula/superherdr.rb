class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.3.1/superherdr-0.9.3.1-macos-aarch64.tar.gz"
  version "0.9.3.1"
  sha256 "6ebc32fc154886556b8968c34dc383c9ba018afd7961a5a8d41cc8e3f1368f1d"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.3 (superherdr 0.9.3.1)", shell_output("#{bin}/herdr --version").strip
  end
end
