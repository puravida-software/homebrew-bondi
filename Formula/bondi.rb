class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.26.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "1f208af32f3f84a28e070305eb77e363866b907416433eec73071e79b0a0302d"
  end

  def install
    bin.install "bondi"
  end
end
