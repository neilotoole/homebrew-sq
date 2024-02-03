# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sq < Formula
  desc "sq data wrangler"
  homepage "https://github.com/neilotoole/sq"
  version "0.47.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sq/releases/download/v0.47.3/sq-0.47.3-macos-arm64.tar.gz"
      sha256 "cc00f714124de5581bbfb06b3f4d4d418734b5f939de6dcb3acb9ba95bb5d130"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.47.3/sq-0.47.3-macos-amd64.tar.gz"
      sha256 "ac187cf11afd6de4426fdeaae2b90fd27485bee4554786a8b5a439ad8f3ad3d9"

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
      url "https://github.com/neilotoole/sq/releases/download/v0.47.3/sq-0.47.3-arm64-arm64.tar.gz"
      sha256 "a16933caf552c820d576695e8a1bdefb40fd1f29f11ab18c7798f1ab1c240681"

      def install
        bin.install "sq"
        bash_completion.install "completions/sq.bash" => "sq"
        zsh_completion.install "completions/sq.zsh" => "_sq"
        fish_completion.install "completions/sq.fish"
        man1.install "manpages/sq.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sq/releases/download/v0.47.3/sq-0.47.3-amd64-amd64.tar.gz"
      sha256 "37d225acc6b9d1f9a42620920106b68549e5c270af234c7c33047e9977b78f27"

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
