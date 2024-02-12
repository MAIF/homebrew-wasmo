# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wasmo < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/wasmo/archive/refs/tags/1.0.7.tar.gz"
  sha256 "ca120c93359d951d4b2116f2f30fb23df2a884c2"
  version "1.0.7"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "wasmo"
    bin.install "cli/target/release/wasmo"
  end
end
