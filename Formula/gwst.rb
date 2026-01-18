class Gwst < Formula
  desc "Git Workspaces for Human + Agentic Development"
  homepage "https://github.com/tasuku43/gwst"
  license "MIT"

  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.1/gwst_v0.1.1_macos_arm64.tar.gz"
      sha256 "ec206d094f46e60460cb5b488aa179a309f2436c764263b92a35bad05a1617e2"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.1/gwst_v0.1.1_macos_x64.tar.gz"
      sha256 "77fa52bab58bb68ba4472cd51b4a7b51ef7ee36312c05deaafb36a0887f70680"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.1/gwst_v0.1.1_linux_arm64.tar.gz"
      sha256 "7acd2bd96db7ee763e06afa84a463da1a2797545b18002d8ed01c526019c9b99"
    else
      url "https://github.com/tasuku43/gwst/releases/download/v0.1.1/gwst_v0.1.1_linux_x64.tar.gz"
      sha256 "d59caeb2e0454c6a4e55b0e442ee7cb10f57326307adff4641a5223b2eb379c7"
    end
  end

  def install
    bin.install "gwst"
  end

  test do
    system "#{bin}/gwst", "--version"
  end
end
