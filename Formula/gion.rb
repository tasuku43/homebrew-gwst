class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.8/gion_v0.2.8_macos_arm64.tar.gz"
      sha256 "122da5afa7d55176e9a0c09c41b413ba1b00585a5485e0b1be4da95c07fc665f"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.8/gion_v0.2.8_macos_x64.tar.gz"
      sha256 "975ed9c368346b6b1fbcfb70aec778cca8a760e31f986685b79fccd4bde3eec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.8/gion_v0.2.8_linux_arm64.tar.gz"
      sha256 "af5ebb2efbfee8cbb86d644fb6351683525164e0f5a402e0336aa5aea37283c9"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.8/gion_v0.2.8_linux_x64.tar.gz"
      sha256 "697240777595cb737fa7e4a9a4adc5806ea8824eb2695877e28d449c0187d71b"
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
