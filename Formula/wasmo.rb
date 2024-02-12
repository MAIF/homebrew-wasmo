# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wasmo < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/wasmo/archive/refs/tags/1.0.7.tar.gz"
  sha256 "6a5fa74a1d4f06d61dcb3c65e5c3dae22ce3ef572413b952bbed5275bd1cf144"
  version "1.0.7"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "wasmo"
    bin.install "cli/target/release/wasmo"
  end
end
