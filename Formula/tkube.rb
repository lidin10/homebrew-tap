class Tkube < Formula
  desc "Enhanced Teleport kubectl wrapper with auto-authentication"
  homepage "https://github.com/lidin10/tkube"
  url "https://github.com/lidin10/tkube/releases/download/v2.0.0/tkube_v2.0.0_darwin_arm64.tar.gz"
  sha256 "a1d606d32d4964d5dd22fbf111dc43a7fa4060f5f4913732c661081d7293dfab"
  license "MIT"
  version "2.0.0"

  depends_on "kubernetes-cli"

  def install
    bin.install "tkube"
  end

  test do
    system "#{bin}/tkube", "version"
  end
end
