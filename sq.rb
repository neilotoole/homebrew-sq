# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq: swiss-army knife for data"
  homepage "https://github.com/neilotoole/sq"
  version "0.19.0-dev1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.19.0-dev1/sq-0.19.0-dev1-macos-amd64.tar.gz"
      sha256 "fb8151a36693fa17b80b033b067c883f338b95897905293ffb591b9907f00632"

      def install
        bin.install "sq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.19.0-dev1/sq-0.19.0-dev1-macos-arm64.tar.gz"
      sha256 "09476fe2646e9d8b9646682930f361ef7f9721014e3e4cbcf12a1118cc73f808"

      def install
        bin.install "sq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sq/releases/download/v0.19.0-dev1/sq-0.19.0-dev1-linux-arm64.tar.gz"
      sha256 "fcc8df86395abc32af283336bf382e7dbbb79cc2c7aae3219374a6f6ee1f479f"

      def install
        bin.install "sq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.19.0-dev1/sq-0.19.0-dev1-linux-amd64.tar.gz"
      sha256 "e88059a47e0431bb5c800d8551a30390e38e5c80194740bfa1954850c060a28c"

      def install
        bin.install "sq"
      end
    end
  end

  test do
    system "#{bin}/sq --version"
  end
end
