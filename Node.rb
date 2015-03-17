require 'formula'

class Node < Formula
  homepage 'http://github.com/arpg/Node'
#  head "https://github.com/arpg/Node.git", :branch => "xxx"
  head "https://github.com/arpg/Node.git"

  head do
    url "https://github.com/arpg/Node.git"
    depends_on "cmake" => :build 
  end

#  depends_on "zeromqpp"
#  depends_on "zeromq" => "with-pgm"
#  depends_on "protobuf"

  def install
    system "cmake", ".", *std_cmake_args, "-DEXPORT_Node=false"
    system "make", "install"
  end
end
__END__

