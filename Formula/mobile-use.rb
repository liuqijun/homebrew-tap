class MobileUse < Formula
  desc "Mobile UI automation CLI — inspect, interact with, and automate mobile app interfaces"
  homepage "https://github.com/liuqijun/mobile-use"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/liuqijun/mobile-use/releases/download/v0.3.1/mobile-use-aarch64-apple-darwin.tar.gz"
      sha256 "89d846529afbe887067583ddfd40ebd2b7ee23a506ca6f91a75b0b59c3320016"
    else
      url "https://github.com/liuqijun/mobile-use/releases/download/v0.3.1/mobile-use-x86_64-apple-darwin.tar.gz"
      sha256 "e76bc1fc7c44c9761efa95e386ef6d3b3d097122c336ef099dc7d96b6f14a308"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/liuqijun/mobile-use/releases/download/v0.3.1/mobile-use-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41cfc1fb1d9fbaa77fbe615b1d8ee0632c025ab326f76cc1fd205d49e22b26a1"
    end
  end

  depends_on "android-platform-tools" => :optional

  def install
    bin.install "mobile-use"
  end

  test do
    assert_match "mobile-use", shell_output("#{bin}/mobile-use --version")
  end
end
