# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq: swiss-army knife for data"
  homepage "https://github.com/neilotoole/sq"
  version "0.34.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.34.1/sq-0.34.1-macos-arm64.tar.gz"
      sha256 "a600484da50a7f1448bf4c05e2c28b78af99bce096580ada1b7a07b6cf1e48d6"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.34.1/sq-0.34.1-macos-amd64.tar.gz"
      sha256 "70030198e08930e9c69e353360be6cfe1b4334da2e0e47145539b79cd0333ad7"

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
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.34.1/sq-0.34.1-linux-amd64.tar.gz"
      sha256 "57d985cf568b6b73400f51433d6537f8147263cf0e720234dcdcd9a590f66caa"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sq/releases/download/v0.34.1/sq-0.34.1-linux-arm64.tar.gz"
      sha256 "f9973b41e6fc8215e9451338f4aed577d7b3a866dcf4b5458bbea49779d5b9f0"

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
