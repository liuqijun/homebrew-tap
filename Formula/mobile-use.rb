class MobileUse < Formula
  desc "Mobile UI automation CLI — inspect, interact with, and automate mobile app interfaces"
  homepage "https://github.com/liuqijun/mobile-use"
  url "https://github.com/liuqijun/mobile-use/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "a0f347a1299615cd0b4e367a1cd630b8bfee40df211a0ee79873f0fc14a02f90"
  license "MIT"

  depends_on "rust" => :build
  depends_on "android-platform-tools" => :optional

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "mobile-use", shell_output("#{bin}/mobile-use --version")
  end
end
