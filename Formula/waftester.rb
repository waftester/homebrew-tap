# typed: false
# frozen_string_literal: true

# This formula is auto-updated by goreleaser on each release.
# Manual edits will be overwritten.
class Waftester < Formula
  desc "WAF security testing CLI — detect, benchmark, and bypass web application firewalls"
  homepage "https://waftester.com"
  version "2.8.8"
  license "BSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/waftester/waftester/releases/download/v#{version}/waftester_Darwin_x86_64.tar.gz"
      sha256 "17e408dfe3ea7e9303ee5fcf901e7e5cb17dc7e9de89609afe4afdcf9b9fda74"
    end
    on_arm do
      url "https://github.com/waftester/waftester/releases/download/v#{version}/waftester_Darwin_arm64.tar.gz"
      sha256 "670cc97d75ac2a45b067fb93b423ff2ac35f4684f673830c6fbd03456e3b2112"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waftester/waftester/releases/download/v#{version}/waftester_Linux_x86_64.tar.gz"
      sha256 "06709e8f057943fc287e2ab85e3af251c48b4d559b78750588f9889ab82e6d7c"
    end
    on_arm do
      url "https://github.com/waftester/waftester/releases/download/v#{version}/waftester_Linux_arm64.tar.gz"
      sha256 "f46ad3451118a5bbe8cf818cc5c483dbcb4cfb330674bd640f4cb613cc15550a"
    end
  end

  def install
    bin.install "waf-tester"
  end

  test do
    system "#{bin}/waf-tester", "version"
  end
end
