class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.47.2/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "42bd2c21071e475c9224314c6ea2efa3d7bf4de839f40cc8c69c5a6939b47543"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.47.2/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "7a278893efd5f119aadc5b4622791c296f7d27e2b100d397cca64fd9c235a10c"
  end

  def install
    bin.install "ceramic-one"
  end
end
