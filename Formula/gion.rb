class Gion < Formula
  desc "Git workspaces as code, with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url ""
      sha256 ""
    else
      url ""
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url ""
      sha256 ""
    else
      url ""
      sha256 ""
    end
  end

  def install
    bin.install "gion"
  end

  test do
    system "#{bin}/gion", "--version"
  end
end
