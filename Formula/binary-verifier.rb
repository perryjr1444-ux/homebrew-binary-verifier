class BinaryVerifier < Formula
  desc "Security tool for verifying binary signatures and calculating checksums on macOS"
  homepage "https://github.com/perryjr1444-ux/binary-verifier"
  url "https://github.com/perryjr1444-ux/binary-verifier/archive/refs/heads/main.zip"
  version "1.0.0"
  sha256 "c4896c236b1d090130d9f045a1eb3e8c84870b1317cd1ac84da6d9e8d034e9e2" # This will be filled in after we create the GitHub repo
  license "MIT"

  def install
    bin.install "binary-verifier.sh" => "binary-verifier"
  end

  test do
    # Test that the script runs and shows help
    assert_match "Usage:", shell_output("#{bin}/binary-verifier --help", 1)
  end
end