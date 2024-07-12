class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.26.0/ceramic-one_x86_64-apple-darwin.tar.gz"
    sha256 "b6678e9e2b5a56ccb00f0ca5cc028120af727060431799f0814d23818efdc192"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.26.0/ceramic-one_aarch64-apple-darwin.tar.gz"
    sha256 "037a58e14722ea482fc1b30aa04649aad653e16ccca1568b2163dd07441e78e3"
  end

  def install
    bin.install "ceramic-one"
  end
end
