require "formula"

class Skinny < Formula
  @skinny_version = "1.3.2"

  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/#{@skinny_version}/skinny-#{@skinny_version}.tar.gz"
  version @skinny_version
  sha1 "d265541b96b24a9e1dd440a5702279d6425b8518"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
