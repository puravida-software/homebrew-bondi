class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.7.1" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "9110498a69b885f28a3a0f9956831aeea7dff2ee827107322b81c7c1ef791175"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "a510ebf509469f247db4a07519c8013de51662d306a9b7fb60b7f71d0dcd428b"
  end

  def install
    bin.install "bondi"
  end
end
