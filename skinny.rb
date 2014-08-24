require "formula"

class Skinny < Formula
  def skinny_version = "1.3.0"
  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/#{skinny_version}/skinny-#{skinny_version}.tar.gz"
  version skinny_version
  sha1 "d05b6d170e6da0c53fdaac3de10fd643417a9497"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
