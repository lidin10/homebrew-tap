class Tkube < Formula
  desc "Enhanced Teleport kubectl wrapper with auto-authentication"
  homepage "https://github.com/lidin10/tkube"
  url "https://github.com/lidin10/tkube/releases/download/v3.0.0/tkube_v3.0.0_darwin_arm64.tar.gz"
  sha256 "6e0b3b649cd558dc4e09fff88186dd9c457e77b27b5ebed09cb5adb1a511d812"
  license "MIT"
  version "3.0.0"

  depends_on "kubernetes-cli"

  def install
    bin.install "tkube"
  end

  test do
    system "#{bin}/tkube", "version"
  end
end
