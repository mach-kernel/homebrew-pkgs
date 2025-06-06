# frozen_string_literal: true

class Launchk < Formula
  version '0.3.0'
  desc 'Rust Cursive TUI that helps manage launchd jobs on macOS'
  homepage 'https://github.com/mach-kernel/launchk'
  url "https://github.com/mach-kernel/launchk/archive/refs/tags/launchk-0.3.0.tar.gz"

  uses_from_macos 'ncurses'
  uses_from_macos 'libiconv'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-x86_64-apple-darwin.zip"
      sha256 "095a91f841a30937b61a72de8648c39ae9843c5dd6b5efa4077039766114e745"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-aarch64-apple-darwin.zip"
      sha256 "078f14a86fcc023c43609d32be66990265557015bf154b1614bdc15deb315760"
    end
  end

  def install
    bin.install 'launchk'
  end
end
