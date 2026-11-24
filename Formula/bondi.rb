class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.29.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "e57865c115168cad4276fc2e0b4f6d8d7568db2675820cd17c31330882fa838d"
  end

  def install
    bin.install "bondi"
  end
end
