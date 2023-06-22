# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq data wrangler"
  homepage "https://github.com/neilotoole/sq"
  version "0.39.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.39.1/sq-0.39.1-macos-arm64.tar.gz"
      sha256 "ede6500e15167851636c2597aebad2fc405347c3de21bb208bf89ebce0b8269d"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.39.1/sq-0.39.1-macos-amd64.tar.gz"
      sha256 "05864c880d711b4da66ce77bf9ba6e8863b4d230bd984362bf18f9528b81cacf"

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
      url "https://github.com/neilotoole/sq/releases/download/v0.39.1/sq-0.39.1-linux-arm64.tar.gz"
      sha256 "5c0c7930449ef51f6c300eaf15041300d8a5ad548498a1223e95e8ed31d48ea6"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.39.1/sq-0.39.1-linux-amd64.tar.gz"
      sha256 "b0019e5ba6c092997096f15b76c1847c79edfaa0a6664a777352568df50bad9d"

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
