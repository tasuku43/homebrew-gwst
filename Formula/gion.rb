class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.1/gion_v1.0.1_macos_arm64.tar.gz"
      sha256 "49972e7b3363318667e6dfa0159d58743f68d405d042ade42c51a118ca5b5b09"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.1/gion_v1.0.1_macos_x64.tar.gz"
      sha256 "99c437727047ee92977eb6d6586700db34a88b78c8bcbde4eb9e59f905706ae6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.1/gion_v1.0.1_linux_arm64.tar.gz"
      sha256 "23050f174b7328abd566016a61e8cf016c8978e4ce33e0e42f6dd21e0ee72157"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.1/gion_v1.0.1_linux_x64.tar.gz"
      sha256 "11cbc4769626e205724b6c918c1dac5231b9d82a7fba16a535a2021814b29ee9"
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
