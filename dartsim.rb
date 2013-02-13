require 'formula'

class Dartsim < Formula
  homepage 'http://dart.golems.org'
  head 'https://github.com/golems/dart.git',
		:using => :git
  url 'https://github.com/golems/dart.git',
		:using => :git,
		:revision => "ca3042ed7f0f19895eec626edf1b72b93392dd35"
	version "2.2.1"

  def install
    system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    system "false"
  end
end
