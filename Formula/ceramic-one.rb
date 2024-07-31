class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.30.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "c7951ec6db3614812762680c3401b645cf79036666ad36e9014b1219caf6c902"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.30.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "2765e8cd30d2440453e194610f5fabe96500158aa0f566aaac60792eed561325"
  end

  def install
    bin.install "ceramic-one"
  end
end
