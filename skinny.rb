require "formula"

class Skinny < Formula
  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.3.4/skinny-1.3.4.tar.gz"
  sha1 "79cb32e4ddc579913445e3514cde62bd6ce66546"
  depends_on "node"

  # TODO Needs to check npm is installed; could be built without-npm
  option "without-npm", "npm will not be installed"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"skinny"
  end

  def post_install
    # brew install skinny --without-npm
    return if build.without? "npm"

    system "npm", "install", "-g", "yo"
    system "npm", "install", "-g", "generator-skinny"
  end

end

