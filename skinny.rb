require "formula"

class Skinny < Formula
  @skinny_version = "1.3.1"

  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/#{@skinny_version}/skinny-#{@skinny_version}.tar.gz"
  version @skinny_version
  sha1 "336cbfc19497b6eef3b95e1b9c782047ab1ad99b"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
