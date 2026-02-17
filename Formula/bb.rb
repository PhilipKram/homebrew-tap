class Bb < Formula
  desc "CLI tool for interacting with Bitbucket Cloud"
  homepage "https://github.com/PhilipKram/Bitbucket-CLI"
  url "https://github.com/PhilipKram/Bitbucket-CLI/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "8aed6b7e55ef6639525a47dfd2dbbe0c8d15786b6c22fd700c91e53d381fc4dc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"bb")
  end

  test do
    assert_match "bb is a CLI tool", shell_output("#{bin}/bb --help")
  end
end
