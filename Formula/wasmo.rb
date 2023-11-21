# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Espanso < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  url "https://github.com/MAIF/wasmo/archive/refs/tags/0.1.6.tar.gz"
  sha256 "ab8b9915ab620c473418dfc9a795670ce602649ef3c69f639cd84c8e5d56286b"
  version "0.1.6"

  def install
    bin.install "wasmo"
  end
end
