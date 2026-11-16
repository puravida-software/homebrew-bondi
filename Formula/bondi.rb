class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.25.1" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "d9566f1f63a7bcff8298cabe775e5d6b59af830e08775fc9888db337f3a7ccdc"
  end

  def install
    bin.install "bondi"
  end
end
