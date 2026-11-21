class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.27.0" # update on release

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "47d8af62150fd107d910b02fad0ca305d20bf7cba1651688b730496a563ea3db"
  end

  def install
    bin.install "bondi"
  end
end
