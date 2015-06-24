# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Hal < Formula
  homepage "https://github.com/arpg/hal"
  head "https://github.com/arpg/HAL.git", :branch => "master"

  depends_on "homebrew/versions/cmake28" => :build

  depends_on "gflags"
  depends_on "glog"
  depends_on "eigen"
  depends_on "cvars"
  depends_on "homebrew/science/openni"
  depends_on "homebrew/science/openni2"
  depends_on "sophus"
  depends_on "opencv"
  depends_on "calibu"
  depends_on "arpg/coredev/node"
  depends_on "pangolin"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release"
    system "make"
    system "make", "install"
  end
end
