class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.31.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "f800ba7ca893085eb45958c790022f3d2d99a6370a41e6691e637b057d149b52"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.31.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "fafae3458947a9ad15cf12cb2df397efaafdc166ce62473dc4b05fa170abd8ee"
  end

  def install
    bin.install "ceramic-one"
  end
end
