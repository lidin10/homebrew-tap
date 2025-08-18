class Tkube < Formula
  desc "Enhanced Teleport kubectl wrapper with auto-authentication"
  homepage "https://github.com/lidin10/tkube"
  url "https://github.com/lidin10/tkube/releases/download/v2.1.2/tkube_v2.1.2_darwin_arm64.tar.gz"
  sha256 "bec80c91980f3afaa196cd21e84acc295cf14b3a9be1e52058c214163e4a554b"
  license "MIT"
  version "2.1.2"

  depends_on "kubernetes-cli"

  def install
    bin.install "tkube"
  end

  test do
    system "#{bin}/tkube", "version"
  end
end
