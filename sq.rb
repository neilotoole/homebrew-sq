# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq: swiss-army knife for data"
  homepage "https://github.com/neilotoole/sq"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.33.0/sq-0.33.0-macos-amd64.tar.gz"
      sha256 "57c98eb024148fd72e5de2d174ca29d1d6f9b8061d02cce3cea54f8f605e77be"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.33.0/sq-0.33.0-macos-arm64.tar.gz"
      sha256 "734b22841d39a81188c472ec00d0ba7741aafe632631ee55620e1b2cd3528482"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sq/releases/download/v0.33.0/sq-0.33.0-linux-arm64.tar.gz"
      sha256 "a08d90360a949a0f37be2dc0e5ee9187651232c37a70d4e1a56ba0952172e699"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.33.0/sq-0.33.0-linux-amd64.tar.gz"
      sha256 "ebc218576037b78dc2bbf26c26b0c470c57fd3952517e76059561e643e89b658"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
  end

  test do
    system "#{bin}/sq --version"
  end
end
