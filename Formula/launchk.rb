# frozen_string_literal: true

class Launchk < Formula
  version '0.2.0'
  desc 'Rust Cursive TUI that helps manage launchd jobs on macOS'
  homepage 'https://github.com/mach-kernel/launchk'
  url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64"

  uses_from_macos 'ncurses'
  uses_from_macos 'libiconv'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-x86_64-apple-darwin.zip"
      sha256 "481ea6d336fc2033ab1489435a5bf7fe8b58eaafdeb50d27c8df8b68e7c433f8"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-aarch64-apple-darwin.zip"
      sha256 "61180ed6429c5a35c4d8de4bff249fb88fcb634c8a5a2adc3b23146e20e965ce"
    end
  end

  def install
    bin.install 'launchk'
  end
end
