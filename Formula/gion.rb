class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.0/gion_v1.0.0_macos_arm64.tar.gz"
      sha256 "f67f96d73eaee76b2408f098fe340ab688e831b205083f3c0546df6baa75fedd"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.0/gion_v1.0.0_macos_x64.tar.gz"
      sha256 "001eb2cc9055738afeb3b43ae5763fd099011bca03351f43b9e84a9b779f427e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v1.0.0/gion_v1.0.0_linux_arm64.tar.gz"
      sha256 "e121be3d071c380a11b6eca5d3be2bcaccdaebe5fcbbaa2af3931942887c47db"
    else
      url "https://github.com/tasuku43/gion/releases/download/v1.0.0/gion_v1.0.0_linux_x64.tar.gz"
      sha256 "75d2bcdb80814bae87a18a1b41afc3bf59d33d9c4b8af650a442c6f0e5c3a221"
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
