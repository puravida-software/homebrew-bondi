class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.30.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "bddcd3c0f9b56d45e8dc0bd8b5cac1d00438c93b2cc9ab221ac071c7af579f15"
  end

  def install
    bin.install "bondi"
  end
end
