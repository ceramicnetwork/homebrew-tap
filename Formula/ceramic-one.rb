class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.29.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "e6d4086ffffdb6514ad40e1ab9c3b3e6b96a710cbcbf6e8bc7932377ea2a3547"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.29.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "171dfc05ddbd478b4e9c5a4c59d958f0766c8211a3dd01151ee05bb54396ad50"
  end

  def install
    bin.install "ceramic-one"
  end
end
