class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "1acbd787b9b248e995761ecea15b1b6b4f2e97fd85c3c17239779335fdde061e"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "e73f9512cf867ffec6bfb04314cc2014785fb877e028d5d182a15c1aa17df2ec"
  end

  def install
    bin.install "bondi"
  end
end
