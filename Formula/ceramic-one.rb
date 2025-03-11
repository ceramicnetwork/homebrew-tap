class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.52.0/ceramic-one_x86_64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "686144d3caaf7193090b20bec8a753b7aa7058d431854ed047be3d8d73d6020b"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.52.0/ceramic-one_aarch64-apple-darwin-macos-14.bin.tar.gz"
    sha256 "a03344dff6c2e0952e8cba76ce3954b91de3ec58388795be66339ad481d61e75"
  end

  def install
    bin.install "ceramic-one"
  end
end
