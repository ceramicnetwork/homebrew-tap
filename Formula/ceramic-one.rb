class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.44.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "c6ddc17eb09b42932755695c4cf2629e70627f76beadb1efe71120de21ed8992"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.44.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "c8eaaa9625a7c75c855f1b27a35717ac1f5b3d0771ec596c286a4093a63bd7c3"
  end

  def install
    bin.install "ceramic-one"
  end
end
