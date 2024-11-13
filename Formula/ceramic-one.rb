class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.42.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "e242a5147b949e669439c7c82633c5a5407e77ebfa5c7a9af50531034e8fb3f9"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.42.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "d239c88ae8195d136ad4bf6f0f9fb39d2e13d8cd525661b37bbf8fc00001a3d2"
  end

  def install
    bin.install "ceramic-one"
  end
end
