class Gwst < Formula
  desc "Git Workspaces for Human + Agentic Development"
  homepage "https://github.com/tasuku43/gwst"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.0/gwst_v0.1.0_macos_arm64.tar.gz"
      sha256 "17655ffe1060485ca7c8f70b7272ffcbc2a2bd8c519c3966f9c17700dacad434"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.0/gwst_v0.1.0_macos_x64.tar.gz"
      sha256 "4340ed70bf2bceaa69cc0e8df30206b48b854c453077576b7506b5aab9e65b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.0/gwst_v0.1.0_linux_arm64.tar.gz"
      sha256 "54f5b2f0034364699239ffd844a74e4cc14c19c32f67067c0d0b1bf7772ed4d5"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.0/gwst_v0.1.0_linux_x64.tar.gz"
      sha256 "fb1320dc749713e80311163ead5f54acb2bd6598a73758e2cff7bd4bfbfa65bb"
    end
  end

  def install
    bin.install "gwst"
  end

  test do
    system "#{bin}/gwst", "--version"
  end
end
