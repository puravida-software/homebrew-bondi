class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.2.0" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "1df4abc7631fcda4cc09b975e471743cdf963aca816ba9882b6f5d01abb0e1c9"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "8eb0522ce710bc17def64fc88a6ee5ac30b9df4bae8e484630a118eb66310d4b"
  end

  def install
    bin.install "bondi"
  end
end
