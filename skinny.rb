require "formula"

class Skinny < Formula
  @skinny_version = "1.3.3"

  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/#{@skinny_version}/skinny-#{@skinny_version}.tar.gz"
  version @skinny_version
  sha1 "b0bdb2dac7f920a3544075a134af6b7b9cf75f69"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
