class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.28.1/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "cc9e17b45a06707d925d9bb6175a9bdaa78096014870a55b4367aa5971c21382"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.28.1/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "7fd181c0c9f51106006c8703cf11952e7f644564cd68179e2ec5acf71291d549"
  end

  def install
    bin.install "ceramic-one"
  end
end
