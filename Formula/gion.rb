class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.1/gion_v0.2.1_macos_arm64.tar.gz"
      sha256 "fccc9d75f51ab5685e204ac7cec711d6cc3fd15af6744a7312480951dbcce54a"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.1/gion_v0.2.1_macos_x64.tar.gz"
      sha256 "e87b8e8b90a500f87cda4b2fd864c9c25e217277859e186475fc156bb90c9455"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.1/gion_v0.2.1_linux_arm64.tar.gz"
      sha256 "c4df9548b01fd5ca7cdce109f808b237d616f486be98839b0ad558ebca59b787"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.1/gion_v0.2.1_linux_x64.tar.gz"
      sha256 "0218884dca4ee4f1735946f491b71d40aa129fa14af395caf482cff7b183de01"
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
