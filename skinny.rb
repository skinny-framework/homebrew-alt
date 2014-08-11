require "formula"

class Skinny < Formula
    homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.2.9/skinny-1.2.9.tar.gz"
  version "1.2.9"
  sha1 "9eab7c8c07a51746945a9caf04ccbe491bbed072"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
