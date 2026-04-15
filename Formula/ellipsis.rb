class Ellipsis < Formula
  desc "Automated dotfile management and syncing on top of yadm"
  homepage "https://github.com/kapowaz/ellipsis"
  url "https://github.com/kapowaz/ellipsis/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d2c6e2daca76fe2261206f05e7f278e776dc1c81a8a91bac46707a325d20c232"
  license "MIT"

  depends_on "yadm"

  def install
    bin.install "ellipsis"
  end

  test do
    assert_match "ellipsis #{version}", shell_output("#{bin}/ellipsis version")
  end
end
