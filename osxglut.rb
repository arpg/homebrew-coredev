class Osxglut < Formula
  homepage "https://github.com/arpg/Osxglut"
#  url "https://github.com/arpg/Node/archive/node-2.0.tar.gz"
#  sha1 "ea9b151ac9f0afd584a2680db77bd4828ef99357"
  head "https://github.com/stevenlovegrove/osxglut.git", :branch => "master"
#  depends_on "cmake" => :build

  def install
    system "make"
  end
end

