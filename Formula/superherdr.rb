class Superherdr < Formula
  desc "Drop-in herdr with focus, snooze, and top-level agents"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.1.2/superherdr-0.9.1.2-macos-aarch64.tar.gz"
  version "0.9.1.2"
  sha256 "d0aeaa8b710a2e1e44f63bd1115072218744524b89033acd3446413c5b112f6a"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.9.1.2"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "eace7d0332adca0e53ed077b9e1722c537ee26e85fbc4b67f7d6dbde821f0696"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with "herdr", because: "both install a `herdr` binary"

  def install
    bin.install "herdr"
    prefix.install "LICENSE", "licenses"
  end

  test do
    assert_equal "herdr 0.9.1 (superherdr 0.9.1.2)", shell_output("#{bin}/herdr --version").strip
  end
end
