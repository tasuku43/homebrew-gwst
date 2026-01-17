class Gws < Formula
  desc "Git Workspaces for Human + Agentic Development"
  homepage "https://github.com/tasuku43/gws"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gws/releases/download/v0.1.0/gws_v0.1.0_macos_arm64.tar.gz"
      sha256 "6d15efe60cb7fd65f3bd9bcadab9731aea6a8344e61cbbe10796db606f4b9c55"
    else
      url "https://github.com/tasuku43/gws/releases/download/v0.1.0/gws_v0.1.0_macos_x64.tar.gz"
      sha256 "ea51ec72ea576e9817b7899f8bf713ef098fada799f17179fabcfa32736e6f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gws/releases/download/v0.1.0/gws_v0.1.0_linux_arm64.tar.gz"
      sha256 "82c0044feb3e7abe93c257b5617748b56ddca1d2acd44685e380a2e0233bfde9"
    else
      url "https://github.com/tasuku43/gws/releases/download/v0.1.0/gws_v0.1.0_linux_x64.tar.gz"
      sha256 "35aaa42f8e445e5fbfb2599ec742cfb6428d5b3bacd39be266370d372dc22435"
    end
  end

  def install
    bin.install "gws"
  end

  test do
    system "#{bin}/gws", "--version"
  end
end
