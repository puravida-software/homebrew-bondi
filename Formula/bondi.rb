class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.0.2" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "50a54cdb2306ce2acfb6626925b4bbbc8e54c611718cb62595f36b37ee1e0be6"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "3460d5a29716df656b6600f5df2664aedec1f147cdd1994140118c584a8053bf"
  end

  def install
    bin.install "bondi"
  end
end
