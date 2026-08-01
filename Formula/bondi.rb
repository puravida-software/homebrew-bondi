class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.10.3" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "9110498a69b885f28a3a0f9956831aeea7dff2ee827107322b81c7c1ef791175"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "99d92297f8577172713f0f27b6d8afc5757fa79a853a52722e0062fc10d0da96"
  end

  def install
    bin.install "bondi"
  end
end
