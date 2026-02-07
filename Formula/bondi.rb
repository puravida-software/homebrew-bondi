class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "f0c338b8beaf96989732604886f8151334629a3182a96af08df9c38434dce7bf"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "59599aa6344a0e2bcfe9d7a71b0c4bc75e273ef6aeeb0406e7ca4a05d3c04eb3"
  end

  def install
    bin.install "bondi"
  end
end
