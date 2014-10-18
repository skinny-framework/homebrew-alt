require "formula"

class Skinny < Formula
  @skinny_version = "1.3.4"

  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/#{@skinny_version}/skinny-#{@skinny_version}.tar.gz"
  version @skinny_version
  sha1 "79cb32e4ddc579913445e3514cde62bd6ce66546"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end

  def post_install
    system 'npm install -g yo'
    system 'npm install -g generator-skinny'
  end

end
