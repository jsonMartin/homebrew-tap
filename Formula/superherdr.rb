class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.1.1/superherdr-0.9.1.1-macos-aarch64.tar.gz"
  version "0.9.1.1"
  sha256 "07d28c0885268c62c1894216cb30e5e9e80e43eb125d9ffc0ea8f4f5cd84e072"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.1.1"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "d3a94f22dcc2cf4286b404555f3090d859651d18ab083e314dc9933272a82497"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.1 (superherdr 0.9.1.1)", shell_output("#{bin}/herdr --version").strip
  end
end