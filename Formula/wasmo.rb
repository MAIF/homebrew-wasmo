# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Espanso < Formula
  desc "WASM Binaries Builder"
  homepage "https://github.com/MAIF/wasmo/tree/main/cli"
  url "https://github.com/MAIF/wasmo/archive/refs/tags/0.1.2.tar.gz"
  sha256 "b1040e50bcb6498249c5e521e29e701117425df5bcc44b17a06d520ec1244a92"
  version "0.1.2"

  def install
    bin.install "wasmo"
  end
end
