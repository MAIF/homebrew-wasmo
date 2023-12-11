# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wasmo < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/wasmo/archive/refs/tags/0.2.2.tar.gz"
  sha256 "98bd88049c8324e971c96e0718056b2d6590527da129da54d960cdad9bf52572"
  version "0.2.2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "wasmo"
    bin.install "cli/target/release/wasmo"
  end
end
