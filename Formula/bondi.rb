class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.28.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "34521cd752a1e030d39580d7ece81579ee22737d8f59a229dfc23e571a1f514e"
  end

  def install
    bin.install "bondi"
  end
end
