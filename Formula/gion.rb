class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.6/gion_v0.2.6_macos_arm64.tar.gz"
      sha256 "776c74246de17532df4a4ec8ffdbf80e626a5989b8c4f5455d70c79bf46918d8"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.6/gion_v0.2.6_macos_x64.tar.gz"
      sha256 "c0f67a0dd6888ac09f9eadacc65370a4b22c8f1a22883ea4f4455f7af581d030"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.6/gion_v0.2.6_linux_arm64.tar.gz"
      sha256 "4620067e5d17611186f2edf16983f3b7bc2d0202424875227b2271e61f2088ae"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.6/gion_v0.2.6_linux_x64.tar.gz"
      sha256 "a5b9a30ebe0637cc608b52bcfd39a0041d4be5e3e2cc2a99ba2333bac25da672"
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
