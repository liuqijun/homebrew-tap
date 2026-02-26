class MobileUse < Formula
  desc "Mobile UI automation CLI — inspect, interact with, and automate mobile app interfaces"
  homepage "https://github.com/liuqijun/mobile-use"
  url "https://github.com/liuqijun/mobile-use/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "2158b9265c1c131f8ebb779edfaeeca8e29257d353a690af12a439e440e79493"
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
