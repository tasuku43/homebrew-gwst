class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.4/gion_v0.2.4_macos_arm64.tar.gz"
      sha256 "4d52dbd6b0c81562e8d401126712a57c76611c819586b3dc34c3a8395c67f9a6"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.4/gion_v0.2.4_macos_x64.tar.gz"
      sha256 "138a8c4512f3b212276f0a1db15c01f64fea801ec773fd647214aab50320b186"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.4/gion_v0.2.4_linux_arm64.tar.gz"
      sha256 "72386fec308bf10267dd09d8d39b39fa0d64c48fc00b4e865a230207ccfa8e3b"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.4/gion_v0.2.4_linux_x64.tar.gz"
      sha256 "02ce15e362f524beb79f1ea3151ff13e8ef7cc92eee8866fdf034704317c9db0"
    end
  end

  def install
    bin.install "gion", "giongo"
  end

  test do
    system "#{bin}/gion", "--version"
    system "#{bin}/giongo", "--version"
  end
end
