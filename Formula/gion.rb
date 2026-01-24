class Gion < Formula
  desc "Inventory-driven Git workspaces with guardrails"
  homepage "https://github.com/tasuku43/gion"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.0/gion_v0.2.0_macos_arm64.tar.gz"
      sha256 "33409c89bb7cbaef3e8ccb453c1231ecf13eb376760cf5f911f7e8757f428b88"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.0/gion_v0.2.0_macos_x64.tar.gz"
      sha256 "f7664655dacec9fecd68a2178dad2d9da275c25702136f455b6b1b33559232cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/gion/releases/download/v0.2.0/gion_v0.2.0_linux_arm64.tar.gz"
      sha256 "2463a2d36fc215f8dfcf8bcae4b85854c3219b26c4322edbbeb726dbadbf072f"
    else
      url "https://github.com/tasuku43/gion/releases/download/v0.2.0/gion_v0.2.0_linux_x64.tar.gz"
      sha256 "0de5442be99041159eb6a96159e6c6436cc7a5f42d497b45bacfff4f3a4a8d47"
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
