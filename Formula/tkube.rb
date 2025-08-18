class Tkube < Formula
  desc "Enhanced Teleport kubectl wrapper with auto-authentication"
  homepage "https://github.com/lidin10/tkube"
  url "https://github.com/lidin10/tkube/releases/download/v3.0.1/tkube_v3.0.1_darwin_arm64.tar.gz"
  sha256 "cad353dda197cd38898184fecd9f69fd7247ca31014e7fee49d2b7e4e8153424"
  license "MIT"
  version "3.0.1"

  depends_on "kubernetes-cli"

  def install
    bin.install "tkube"
  end

  test do
    system "#{bin}/tkube", "version"
  end
end
