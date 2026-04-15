class Ellipsis < Formula
  desc "Automated dotfile management and syncing on top of yadm"
  homepage "https://github.com/kapowaz/ellipsis"
  url "https://github.com/kapowaz/ellipsis/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cc61f6195a01988b153837ad5f94acc2fe3ba6861069a7c9a0efd01db39a8f80"
  license "MIT"

  depends_on "yadm"

  def install
    bin.install "ellipsis"
  end

  test do
    assert_match "ellipsis #{version}", shell_output("#{bin}/ellipsis version")
  end
end
