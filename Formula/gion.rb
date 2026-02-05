class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.7/gion_v0.2.7_macos_arm64.tar.gz"
      sha256 "069d7c5af4dfb8b51690b9d019b27aaed67d030b17055350654037ec3c8f38b6"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.7/gion_v0.2.7_macos_x64.tar.gz"
      sha256 "7f5a0ef7217a38da58b2f8b120832646af3af1ef9f1ccbd295d8c134c13aa9e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.7/gion_v0.2.7_linux_arm64.tar.gz"
      sha256 "d0f2e3269992a779a320be28a2e69b669fc1bbe123d25d39dd880edb81f0140d"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.7/gion_v0.2.7_linux_x64.tar.gz"
      sha256 "5c7d5774ca81c6a0c628610a0660013bafda5cfe83c63cc8a263ae7e54008f72"
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
