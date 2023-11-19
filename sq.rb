# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq data wrangler"
  homepage "https://github.com/neilotoole/sq"
  version "0.43.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.43.1/sq-0.43.1-macos-arm64.tar.gz"
      sha256 "657d0c87f1ffe0072c5cc24727ce3739709c7b88a6113129baf410af2d2be7fc"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.43.1/sq-0.43.1-macos-amd64.tar.gz"
      sha256 "c802f865dd1e51532489d96c793d38568fde01d9994dc6914c5180d4df5ecaf7"

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
      url "https://github.com/neilotoole/sq/releases/download/v0.43.1/sq-0.43.1-amd64-amd64.tar.gz"
      sha256 "2cf7862d662e17a5c562153294e58229334dc0a0ca809bd8454fc2b01fa3bf31"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sq/releases/download/v0.43.1/sq-0.43.1-arm64-arm64.tar.gz"
      sha256 "de19fc13bf404473dcd21e96fdcd4dd90ae2c35c01bf48818f46fc80a37f3743"

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
