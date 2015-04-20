# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Calibrate < Formula
  homepage "https://github.com/arpg/vicalib"n
#  url "https://github.com/arpg/Node/archive/node-2.0.tar.gz"
#  sha1 "ea9b151ac9f0afd584a2680db77bd4828ef99357"
  head "https://github.com/arpg/vicalib.git", :branch => "master"

  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "hal"
  depends_on "calibu"
  depends_on "opencv"
  depends_on "cvars"
  depends_on "gflags"
  depends_on "glog"
  depends_on "ceres"
  depends_on "pangolin"

  def install
    system "cmake", ".", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release"
    system "make"
    system "make", "install"
  end
end

