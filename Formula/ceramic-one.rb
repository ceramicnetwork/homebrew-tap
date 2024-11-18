class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.43.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "b35f73a7f9f01565c24f1a7ed56249ecad2421f82cf0da3c1414328eb0ae5706"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.43.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "13261f639a5f8d4694055e53c8dfefc12d7c8cf51cb9e31963628f7993d57003"
  end

  def install
    bin.install "ceramic-one"
  end
end
