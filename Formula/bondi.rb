class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.3.3" # update on release

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
    sha256 "8591e03433c21a4404d34f6562a4b2d1aa816f698228bd3a83caba55159c3b3f"
  end

  def install
    bin.install "bondi"
  end
end
