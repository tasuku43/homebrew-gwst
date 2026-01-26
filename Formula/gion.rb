class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.2/gion_v0.2.2_macos_arm64.tar.gz"
      sha256 "ad67f16450e9c343cf35262334aa2df7b04994ae3793160097d020e84313582a"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.2/gion_v0.2.2_macos_x64.tar.gz"
      sha256 "ed84787317a178cdfb2e169d99b92f43aef16e0cb05a9891c1cdec5ce1c99c0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.2/gion_v0.2.2_linux_arm64.tar.gz"
      sha256 "df9b8a8c5ea5ab1cdcacb3b422226f3057040f23b79572a4c9e35333abfb11e2"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.2/gion_v0.2.2_linux_x64.tar.gz"
      sha256 "388a4fb0da2217c701e80e814cbd0b9b3dda015cea637befd3045ff5d40761f9"
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
