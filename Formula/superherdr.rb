class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.0.1/superherdr-0.9.0.1-macos-aarch64.tar.gz"
  version "0.9.0.1"
  sha256 "092cd7e78e1eb5ee22ee69c19dc875d349a8793cdce763d39e1e1dbcf51cd7b7"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.0.1"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "1206b2900967bf24d50f45e0fa87f471a86a357a2dbfcbb03b71191c190b5e8f"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.0 (superherdr 0.9.0.1)", shell_output("#{bin}/herdr --version").strip
  end
end
