class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.5.2/superherdr-0.9.5.2-macos-aarch64.tar.gz"
  version "0.9.5.2"
  sha256 "157db6e4911bb0b63c2ab195c81519a8ea94fb71db2ade562dfc72e5b662b099"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.5 (superherdr 0.9.5.2)", shell_output("#{bin}/herdr --version").strip
  end
end
