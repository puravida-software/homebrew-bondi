class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "33bfd2a79ae2381eff377b23eea966777e0a9753b15553299cb75e2b67634abf"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "2319163e42e48548f23eba7fa5bf84c19d8441f6a9c384c917dc899c549f105e"
  end

  def install
    bin.install "bondi"
  end
end
