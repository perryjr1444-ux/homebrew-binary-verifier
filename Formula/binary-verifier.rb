class BinaryVerifier < Formula
  desc "Security tool for verifying binary signatures and calculating checksums on macOS"
  homepage "https://github.com/perryjr1444-ux/binary-verifier"
  url "https://github.com/perryjr1444-ux/binary-verifier/archive/refs/heads/main.zip"
  version "1.0.0"
  sha256 "" # This will be filled in after we create the GitHub repo
  license "MIT"

  def install
    bin.install "binary-verifier.sh" => "binary-verifier"
  end

  test do
    # Test that the script runs and shows help
    assert_match "Usage:", shell_output("#{bin}/binary-verifier --help", 1)
  end
end