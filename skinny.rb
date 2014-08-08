require "formula"

class Skinny < Formula
    homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.2.8/skinny-1.2.8.tar.gz"
  version "1.2.8"
  sha1 "433af72d6b93fee160ef900e05167ad6f1a6d82c"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
