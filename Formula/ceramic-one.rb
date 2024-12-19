class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.46.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "d7aa935a7e1d1824a3d1133b85da30d3d33f0f86902a0df8026f21e3d72118d2"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.46.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "7404c33167d58710c47ed491bdc1bba17c02a3bda61ed8edaf1417bec4cda30b"
  end

  def install
    bin.install "ceramic-one"
  end
end
