# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Node < Formula
  homepage "https://github.com/arpg/Node"
  url "https://github.com/arpg/Node/archive/node-2.0.tar.gz"
  sha1 "9d1693e338c2fb003b4bf3c3fb971a8200911331f2fd8edb26c0abdfc1c598b2"

  depends_on "cmake" => :build
  depends_on "protobuf"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args, "-DEXPORT_Node=false"
    system "cmake", ".", *std_cmake_args
  end
end
