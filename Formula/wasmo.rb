# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wasmo < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/wasmo/archive/refs/tags/0.1.6.tar.gz"
  sha256 "ab8b9915ab620c473418dfc9a795670ce602649ef3c69f639cd84c8e5d56286b"
  version "0.1.6"

  def install
    system "cd", "cli"
    system "cargo", "build", "--release", "--bin", "wasmo"
    bin.install "target/release/wasmo"
  end
end
