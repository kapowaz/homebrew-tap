class Ellipsis < Formula
  desc "Automated dotfile management and syncing on top of yadm"
  homepage "https://github.com/kapowaz/ellipsis"
  url "https://github.com/kapowaz/ellipsis/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "fdd96b3317c3b92746ee90f9e0388b7f47fc589d89e31b418f0e7469a35c3b65"
  license "MIT"

  depends_on "yadm"

  def install
    bin.install "ellipsis"
  end

  test do
    assert_match "ellipsis #{version}", shell_output("#{bin}/ellipsis version")
  end
end
