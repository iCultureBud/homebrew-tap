# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cwf < Formula
  desc "Copy and paste with friends remotely and easy"
  homepage "https://github.com/noobcollective/cwf"
  version "0.2.9"
  license "MIT"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/noobcollective/cwf/releases/download/v0.2.9/cwf_0.2.9_darwin_amd64.tar.gz"
      sha256 "defedd8e74fb95c165ceb4f47384b7b6e0ab6a28cb5e67238cd08e669e2b3505"

      def install
        bin.install "cwf"
      end
    end
    on_arm do
      url "https://github.com/noobcollective/cwf/releases/download/v0.2.9/cwf_0.2.9_darwin_arm64.tar.gz"
      sha256 "d46f2b08a5e7a8fdc34bb47e043bccc7e6811a83b5773134173d268955e804e9"

      def install
        bin.install "cwf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/noobcollective/cwf/releases/download/v0.2.9/cwf_0.2.9_linux_amd64.tar.gz"
        sha256 "f18eea1b2cad1d3d98279b73fc1dea3adab8d4b690dbbc68c95a518399115a7c"

        def install
          bin.install "cwf"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/noobcollective/cwf/releases/download/v0.2.9/cwf_0.2.9_linux_armv6.tar.gz"
        sha256 "9bdf11f378f7623f50fa0c51755bbddabd8bc7eb9a69c24b37fb47f5881518b2"

        def install
          bin.install "cwf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/noobcollective/cwf/releases/download/v0.2.9/cwf_0.2.9_linux_arm64.tar.gz"
        sha256 "67fbbaccf6e0a2e3a6d743fb1f83b3ceaca46f503e837972e8916085897344e2"

        def install
          bin.install "cwf"
        end
      end
    end
  end

  test do
    system "#{bin}/cwf -v"
  end
end
