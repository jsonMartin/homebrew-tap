class Superherdr < Formula
  desc "Terminal workspace manager with focus/snooze"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.1.0/superherdr-0.1.0-macos-aarch64.tar.gz"
  version "0.1.0"
  sha256 "59b40f0d89d437fefca2e2e8d040831113dacb69da51599248e2c1b34e96d427"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "5e2693793f48cf9d89923fc1c92f365cfdff6dc415faca4a8917608b15f3c3d8"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "superherdr"
    bin.install_symlink bin/"superherdr" => "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "superherdr 0.1.0", shell_output("#{bin}/superherdr --version").strip
    assert_equal "superherdr 0.1.0", shell_output("#{bin}/herdr --version").strip
  end
end
