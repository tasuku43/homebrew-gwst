class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.9/gion_v0.2.9_macos_arm64.tar.gz"
      sha256 "94c2e69241a62691a2b02fe35112d23e20c2d80cf1c7afb810dcdf19f8bde34e"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.9/gion_v0.2.9_macos_x64.tar.gz"
      sha256 "f49fd6d1a5cfda2b5105648c62ec121a4752e57477ff5136a1121923f1372065"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.9/gion_v0.2.9_linux_arm64.tar.gz"
      sha256 "4632e8468f7bcd0ceaaf1d8bd85a6920c2e4cf6be8867c066368f38ee5ee8318"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.9/gion_v0.2.9_linux_x64.tar.gz"
      sha256 "bf20c20a0f637ef53464f5429243e15f2b62a6e96ec64a4e1deca92a87566e61"
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
