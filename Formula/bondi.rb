class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.1.0" # update on release

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-macos-arm64.tar.gz"
      sha256 "731ad9d8ca955a6b3e0d8bd43e22f41621d0a3a347edac4859521de67f5bcb74"
    else
      odie "No macOS x86_64 artifact published yet."
    end
  end

  on_linux do
    url "https://github.com/puravida-software/bondi/releases/download/v#{version}/bondi-linux-x86_64.tar.gz"
    sha256 "93faf02429b0802a32cc759fb07ab114baa3099a97d71b2a5bfc9f61336376c3"
  end

  def install
    bin.install "bondi"
  end
end
