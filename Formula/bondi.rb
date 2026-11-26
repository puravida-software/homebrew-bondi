class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.31.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "6216b1769df0c04a380620382be63a0918546b45cc1181988e4bca56b2432715"
  end

  def install
    bin.install "bondi"
  end
end
