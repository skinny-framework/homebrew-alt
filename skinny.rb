require "formula"

class Skinny < Formula
    homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.2.10/skinny-1.2.10.tar.gz"
  version "1.2.10"
  sha1 "3d9179238c6306c04cfe4060ceba006b5865c46f"
  depends_on "npm"

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec/"skinny"
  end
end
