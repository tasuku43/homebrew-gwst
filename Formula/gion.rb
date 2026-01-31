class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.5/gion_v0.2.5_macos_arm64.tar.gz"
      sha256 "ad091ff83aef75d367712555319d1cacfcaf1803342aad612fe4a014ab8461bd"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.5/gion_v0.2.5_macos_x64.tar.gz"
      sha256 "c2f9df89297ca38acac4c92e174968f816cc72f6bd14ac3b0ea48291ade331b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.5/gion_v0.2.5_linux_arm64.tar.gz"
      sha256 "50f7a725214b658718d11d29a484cff182940377415d75969d200775deb66340"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.5/gion_v0.2.5_linux_x64.tar.gz"
      sha256 "ee1fd13a98ba3839daa586fd5282337d1855cfe10563e4ebbd0626e69f2ed698"
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
