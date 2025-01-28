class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.47.3/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "69d2904bacf2f7e754bf48959dd5ac6a7e4b47b600bcd94791390dad10081c7c"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.47.3/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "47b43ab8d984fe6084a6c3431304599761d1996a0d469ec3dc6435d36f236de4"
  end

  def install
    bin.install "ceramic-one"
  end
end
