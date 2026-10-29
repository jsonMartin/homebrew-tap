class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.5.3/superherdr-0.9.5.3-macos-aarch64.tar.gz"
  version "0.9.5.3"
  sha256 "2caabec70eefc342f1e0a956f7a935b00c5955351701741d96b07765f4f38be8"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.5 (superherdr 0.9.5.3)", shell_output("#{bin}/herdr --version").strip
  end
end
