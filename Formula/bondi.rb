class Bondi < Formula
  desc "Bondi CLI"
  homepage "https://github.com/puravida-software/bondi"
  version "0.13.2" # update on release

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
    sha256 "9f09ec0a0a3435982b9c0b434bec267df094673ef47be9e595bc4e28a6ea4aab"
  end

  def install
    bin.install "bondi"
  end
end
