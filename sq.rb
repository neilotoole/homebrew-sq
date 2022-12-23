# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq is a swiss army knife for data"
  homepage "https://github.com/neilotoole/sq"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.16.1/sq-0.16.1-macos-amd64.tar.gz"
      sha256 "1c852086ddd859c11d42a8c9c4c57a65a5b9e88e802643dd816a304e4d7508d0"

      def install
        bin.install "sq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.16.1/sq-0.16.1-macos-arm64.tar.gz"
      sha256 "b870d9abc2841a6e472cc76f3a721a3b4aaaa167c99ca23948d34b95a8bb2bff"

      def install
        bin.install "sq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.16.1/sq-0.16.1-linux-amd64.tar.gz"
      sha256 "93b17b8e5c6c8bbd5408590e13b64c7266c94242c2dd1a8facd4121d8a0b265e"

      def install
        bin.install "sq"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sq/releases/download/v0.16.1/sq-0.16.1-linux-arm64.tar.gz"
      sha256 "f7519dc569bf8d48b900485adc3a5ddf2409ce907a2dd3f265f89c67276130d0"

      def install
        bin.install "sq"
      end
    end
  end

  test do
    system "#{bin}/sq --version"
  end
end
