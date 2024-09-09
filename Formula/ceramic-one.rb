class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.34.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "042d31efd3367f49efeae149618df47c0675f725a355c2e02a7f8e1bfac358b1"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.34.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "34d428eec039f64fb8430dc3ce3110a6ee4bb53fc957f907e339d48b9ac211e2"
  end

  def install
    bin.install "ceramic-one"
  end
end
