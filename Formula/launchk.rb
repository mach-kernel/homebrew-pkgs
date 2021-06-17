# frozen_string_literal: true

class Launchk < Formula
  version '0.1.2'
  desc 'Rust Cursive TUI that helps manage launchd jobs on macOS'
  homepage 'https://github.com/mach-kernel/launchk'
  url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64"

  uses_from_macos 'ncurses'
  uses_from_macos 'libiconv'

  on_macos do
    url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64.tar.gz"
    sha256 "72c4d834d5ce1838551d444fe43f87d9ef1a6618bdbd2c5d38c737592ec50f1b"

    # if Hardware::CPU.intel?
      # url "https://github.com/mach-kernel/launchk/releases/download/#{version}/launchk-amd64.tar.gz"
      # sha256 "72c4d834d5ce1838551d444fe43f87d9ef1a6618bdbd2c5d38c737592ec50f1b"
    # end

    # still borken
    # if Hardware::CPU.arm?
    # end
  end

  def install
    bin.install 'launchk'
  end
end