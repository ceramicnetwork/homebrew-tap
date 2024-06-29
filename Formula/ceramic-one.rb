class CeramicOne < Formula
    desc "Implementation of the Ceramic protocol in Rust"
    homepage "https://ceramic.network"
    # Conditional URL and SHA based on architecture
    if Hardware::CPU.intel?
      url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.25.0/ceramic-one_x86_64-apple-darwin_brew-test.tar.gz"
      sha256 "sha256_for_x86_64_version"
    elsif Hardware::CPU.arm?
      url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.25.0/ceramic-one_aarch64-apple-darwin_brew-test.tar.gz"
      sha256 "5470e699784ec7a679937ad4a0c5f19c7559b025b680b0c7206c78c7e4e58df5"
    end
    version "0.25.0"
  
    def install
      bin.install "ceramic-one"
    end
  end
