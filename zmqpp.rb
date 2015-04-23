# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Zmqpp < Formula
  homepage "https://github.com/arpg/zmqpp"
  url "https://github.com/arpg/zmqpp/archive/zmqpp-dev.tar.gz"
  sha1 "69c5a99dbd51724c7ae1caadfbea402ce114db9f"

  depends_on "cmake" => :build
  depends_on "zeromq" 

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
