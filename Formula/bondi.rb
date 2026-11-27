class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.32.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "b7c3de474e96b28788b942a1460bf9922ad890aee3cb7b1629c5693d40ec2603"
  end

  def install
    bin.install "bondi"
  end
end
