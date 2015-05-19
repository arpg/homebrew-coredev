require 'formula'

class Bullet < Formula
  homepage 'https://github.com/bulletphysics/bullet3'
  url 'https://github.com/bulletphysics/bullet3/archive/2.83.4.tar.gz'
  sha1 '96b8d18ebecc87e749247702d4022fcc3385ffd6'
  
  depends_on 'cmake' => :build

  def suite_sparse_options
    Tab.for_formula(Formula["suite-sparse"])
  end

  def install
    cmake_args = std_cmake_args + ['-DUSE_DOUBLE_PRECISION=ON']
    system "cmake", ".", *cmake_args
    system "make"
    system "make", "install"
  end
end
