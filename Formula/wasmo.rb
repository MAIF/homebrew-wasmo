# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wasmo < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/wasmo/archive/refs/tags/1.0.4.tar.gz"
  sha256 "b2a8b8ea7ff631117cac3d7d49986c335ecf5e151f5833922ef1129625bc2085"
  version "1.0.4"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "wasmo"
    bin.install "cli/target/release/wasmo"
  end
end
