class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.25.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "2856b06a337c0f34acb844c1c3df8f96d048950a5fe28e7718698c284a7fadb8"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.25.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "d9a0b1d08ef71efef8f93c060756d3d3b154693122c09e40311ae3ca669674d8"
  end

  def install
    bin.install "ceramic-one"
  end
end
