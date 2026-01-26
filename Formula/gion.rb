class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.3/gion_v0.2.3_macos_arm64.tar.gz"
      sha256 "4ad59500320081ca09233b53bdad77c5adb6a811f4243ccf2d5dd2b829f2c7d2"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.3/gion_v0.2.3_macos_x64.tar.gz"
      sha256 "383d4f614436c12e5095e08f144bdbf6d67f1047a10159ed8a758c03b6230d53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.3/gion_v0.2.3_linux_arm64.tar.gz"
      sha256 "aeba0941eafc9e6e63a2d76595eb3fed178cd01fe64332416926c63263a59290"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.3/gion_v0.2.3_linux_x64.tar.gz"
      sha256 "482b6d50269405b808173ebd5a684fe91ed5b7b131f928138fe4a8ba35c21cbc"
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
