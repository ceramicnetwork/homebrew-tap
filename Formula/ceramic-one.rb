class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.33.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "6e0e0735ddec6adf854196af4057a7918a5b0851608a5929d184d948f1ccb50c"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.33.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "30b6acfb319d25b5567423e285c926dccd476a97b220fe8532e5e2a2a1676d32"
  end

  def install
    bin.install "ceramic-one"
  end
end
