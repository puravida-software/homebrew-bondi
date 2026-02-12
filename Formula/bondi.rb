class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.0.3" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "953e901fe813ea8233cf083911945112da4bd779e74aee050cf59b1f3bcaac2c"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "4240005793ee4ce830edf18a487c84755297891c4a0252383714ec6c06c0daed"
  end

  def install
    bin.install "bondi"
  end
end
