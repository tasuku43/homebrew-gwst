class Gwst < Formula
  desc "Git Workspaces for Human + Agentic Development"
  homepage "https://github.com/tasuku43/gwst"
  license "MIT"

  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.2/gwst_v0.1.2_macos_arm64.tar.gz"
      sha256 "350c3407c47d9831ada7486742b40ef7c1ea7e72a73fc33f97d89034db961316"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.2/gwst_v0.1.2_macos_x64.tar.gz"
      sha256 "b04196964d4419ab6479411493ce7b2190e4e8b6e17a3e22efd6ffb3a0b19b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.2/gwst_v0.1.2_linux_arm64.tar.gz"
      sha256 "92c8711de72c878a082e9fb1df4ba790e419dcbcfbcd6defcfe5e345880c5f62"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.2/gwst_v0.1.2_linux_x64.tar.gz"
      sha256 "c1c591065e41689c1853d321e83e222e2cd4d4d5392532b2cf9f87e212e82666"
    end
  end

  def install
    bin.install "gwst"
  end

  test do
    system "#{bin}/gwst", "--version"
  end
end
