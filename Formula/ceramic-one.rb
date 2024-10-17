class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.39.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "5a2cee5e71b4e5bcbf669e9bb3ea1cc192095c99b2c6f65a1b1c102c76424049"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.39.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "ac95bf1a59c92394655946e51894229497a66ef603b884c3f1b2dcd136da1144"
  end

  def install
    bin.install "ceramic-one"
  end
end
