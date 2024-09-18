class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.35.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "be4bd6176e5b1c48b309ba3a9283c30f325210266486d52b1aad07ad3a1e16e5"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.35.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "55494fa8b518954c11eceac92bb23758fa51cf52475f1deccb76ca45b7f1d6c3"
  end

  def install
    bin.install "ceramic-one"
  end
end
