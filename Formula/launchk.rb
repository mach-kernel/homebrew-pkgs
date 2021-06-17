# frozen_string_literal: true

class Launchk < Formula
  version '0.1.3'
  desc 'Rust Cursive TUI that helps manage launchd jobs on macOS'
  homepage 'https://github.com/mach-kernel/launchk'
  url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64"

  uses_from_macos 'ncurses'
  uses_from_macos 'libiconv'

  on_macos do
    url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64.tar.gz"
    sha256 "a76d7cc1e41137d6c1bea7653999ada799e3e53013f0f9462dd3b79ce0e7eb01"

    # if Hardware::CPU.intel?
      # url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64.tar.gz"
      # sha256 "91f1125b795cc701319e6620853cdacba344f447fc7e7f844f80e25b528690f7"
    # end

    # still borken
    # if Hardware::CPU.arm?
    # end
  end

  def install
    bin.install 'launchk'
  end
end
