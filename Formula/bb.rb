class Bb < Formula
  desc "CLI tool for interacting with Bitbucket Cloud"
  homepage "https://github.com/PhilipKram/Bitbucket-CLI"
  url "https://github.com/PhilipKram/Bitbucket-CLI/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "e64c5cb0df74a6b5698f84a45a7d416ef91de22b4f4eb43cc0d2c19b982d5fd0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"bb")
  end

  test do
    assert_match "bb is a CLI tool", shell_output("#{bin}/bb --help")
  end
end
