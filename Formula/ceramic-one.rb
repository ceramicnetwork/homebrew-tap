class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.32.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "d10be52694cb59161849b2f2b48bb978a41cb0f66f5d27877a6e8ca52f2e1ac0"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.32.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "0541e5c8d21a47adf7bda84851a4b8e2a99a2ea3359e629ef94fab7775ea346f"
  end

  def install
    bin.install "ceramic-one"
  end
end
