class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.40.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "665d053429ebc33aab901d08e9886cfa5c839366aa33dbbcf927345bb39c388d"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.40.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "12ea7385c487eff9898f6a1aba693af63bbc1f628c8c187fce6db7ba1ccf2d20"
  end

  def install
    bin.install "ceramic-one"
  end
end
