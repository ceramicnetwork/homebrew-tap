class CeramicOne < Formula
  desc "Implementation of the Ceramic protocol in Rust"
  homepage "https://ceramic.network"
  # Conditional URL and SHA based on architecture
  if Hardware::CPU.intel?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.37.0/ceramic-one_x86_64-apple-darwin.bin.tar.gz"
    sha256 "668faa97cfabd55d7b92e20079e94752151267c2ec2e69d83bffb3fef7cdd7fc"
  elsif Hardware::CPU.arm?
    url "https://github.com/ceramicnetwork/rust-ceramic/releases/download/v0.37.0/ceramic-one_aarch64-apple-darwin.bin.tar.gz"
    sha256 "9f0887017ad5a608098d0264d5a1e95581708b14c1453f1b702b73acda94f7c4"
  end

  def install
    bin.install "ceramic-one"
  end
end
