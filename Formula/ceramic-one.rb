class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.45.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "9fd68709e34638aef42461f4547c480937e2f2efada5ccecd82baabdbe75cef8"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.45.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "39f833a2cf013d3b0c1905d73511c84cd88572258abacbe46fb15d175c4ad444"
  end

  def install
    bin.install "ceramic-one"
  end
end
