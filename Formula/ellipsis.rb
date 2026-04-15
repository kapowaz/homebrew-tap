class Ellipsis < Formula
  desc "Automated dotfile management and syncing on top of yadm"
  homepage "https://github.com/kapowaz/ellipsis"
  url "https://github.com/kapowaz/ellipsis/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "495808acf3a65805175998b773986873b661abe658b86126c7ee24036b1f6ffd"
  license "MIT"

  depends_on "yadm"

  def install
    bin.install "ellipsis"
  end

  test do
    assert_match "ellipsis #{version}", shell_output("#{bin}/ellipsis version")
  end
end
