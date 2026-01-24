class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.1.0/gion_v0.1.0_macos_arm64.tar.gz"
      sha256 "343e38688ad0095807159f73434bd182cadf2d5ebc688a4c8608ad4a641dfc98"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.1.0/gion_v0.1.0_macos_x64.tar.gz"
      sha256 "8b74be254f5c22ae99df3a1fb345c45b6f759363dad8cef61a578f27c6c8fd59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.1.0/gion_v0.1.0_linux_arm64.tar.gz"
      sha256 "c3c72f8054ce929116594fedb7b4f6a24251521e43ee3ee7d084b26e0a668fab"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.1.0/gion_v0.1.0_linux_x64.tar.gz"
      sha256 "63d6a5be8ce3d5ab29c4d4045e9ab23c0d61f0042184787c8f1a936596548cc0"
    end
  end

  def install
    bin.install "gion"
  end

  test do
    system "#{bin}/gion", "--version"
  end
end
