class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.51.0/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "e8521737169debba41264fee7e255ce725233d63dd019f7233c7cd802bad6d56"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.51.0/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "c6eb9f1091e73c78a735ed11a5b63554a4d8a8afc2c5206101aaf541870e2276"
  end

  def install
    bin.install "ceramic-one"
  end
end
