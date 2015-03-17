# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Node < Formula
  homepage "https://github.com/arpg/Node"
  url "https://github.com/arpg/Node/archive/node-2.0.tar.gz"
  sha1 "ea9b151ac9f0afd584a2680db77bd4828ef99357"

  depends_on "cmake" => :build
  depends_on "protobuf"
  depends_on "zmqpp"
  depends_on "gflags"
  depends_on "glog"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args, "-DEXPORT_Node=false"
    system "cmake", ".", *std_cmake_args
  end
end
