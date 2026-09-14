class Ellipsis < Formula
  desc "Automated dotfile management and syncing on top of yadm"
  homepage "https://github.com/kapowaz/ellipsis"
  url "https://github.com/kapowaz/ellipsis/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "07edc7f96d0414331fe953dfd6c3b8fa781a8b1c23cc7dd673cbd7c1ba63c593"
  license "MIT"

  depends_on "yadm"

  def install
    bin.install "ellipsis"
  end

  test do
    assert_match "ellipsis #{version}", shell_output("#{bin}/ellipsis version")
  end
end
