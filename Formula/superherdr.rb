class Superherdr < Formula
  desc "Terminal workspace manager with focus/snooze"
  homepage "https://github.com/jsonmartin/superherdr"
  url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.1.0/superherdr-0.1.0-macos-aarch64.tar.gz"
  version "0.1.0"
  sha256 "b19aae72692725be26a357f008784286221d6992c5aa23495258716fe0fe43a9"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/jsonmartin/superherdr/releases/download/superherdr-v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "17b188d56eeaeaa9e5a62d1038a2b91a26a025f18d0da5858dbada3cd74b4005"
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
