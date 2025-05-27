class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.55.0/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "b26bd82487ece7e7bb4d2b664946a93efee2937ca0a27d3868157518f1ab8c18"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.55.0/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "968ddf18ef72952320c91beebb3d5df8683853b05a9d66d37237a346dd6cbe27"
  end

  def install
    bin.install "ceramic-one"
  end
end
