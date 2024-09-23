class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.36.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "282ecfd524f0657a8781870fddc552e00ee44312388e5bf3413b6d88da68e659"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.36.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "1bf98cb5a23eb79ef9c601b4528c7a8d3910f6a643ac8e93d246006eebb71c64"
  end

  def install
    bin.install "ceramic-one"
  end
end
