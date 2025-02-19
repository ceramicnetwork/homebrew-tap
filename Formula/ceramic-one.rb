class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.48.0/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "332ed85a2f8ca0b401ba38890e76d2177c0d711ea1fdbbee4cd904b69d3b4dab"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.48.0/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "81f1e5242dada4d63e677960ea6ecdebcdaa72fdb339d9959294b6d0f02d9a42"
  end

  def install
    bin.install "ceramic-one"
  end
end
