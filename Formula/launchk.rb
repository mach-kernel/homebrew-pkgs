# frozen_string_literal: true

class Launchk < Formula
  version '0.3.1'
  desc 'Rust Cursive TUI that helps manage launchd jobs on macOS'
  homepage 'https://github.com/mach-kernel/launchk'
  url "https://github.com/mach-kernel/launchk/archive/refs/tags/launchk-#{version}.tar.gz"

  uses_from_macos 'ncurses'
  uses_from_macos 'libiconv'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-x86_64-apple-darwin.tar.gz"
      sha256 "a62171db8b6bdc937c286bab73ba49efe5ddb41b302325f4320cb843b9c0c944"
    end

    if Hardware::CPU.arm?
      url "https://github.com/mach-kernel/launchk/releases/download/launchk-#{version}/launchk-aarch64-apple-darwin.tar.gz"
      sha256 "3752298ceb058160a413bd041e765750030019f9513f2c2b9520ccb08da4f93f"
    end
  end

  def install
    bin.install 'launchk'
  end
end
