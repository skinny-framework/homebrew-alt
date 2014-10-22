require "formula"

class Skinny < Formula
  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.3.4-1/skinny-1.3.4-1.tar.gz"
  sha1 "59cba0afb287b06f2a6ddf2d7f2fb238a3653508"

  depends_on "node"

  class UniversalNpm < Requirement
    fatal true
    satisfy { which("npm") }
    def message
      "npm is required. If you have installed node with `--without-npm` option, reinstall with `--with-npm`."
    end
  end
  depends_on UniversalNpm

  option "without-npm-generator", "Yeoman generator will not be installed"

  def install
    libexec.install Dir["*"]
    # `skinny new/upgrade` use only its own node_modules under libexec dir
    (bin/"skinny").write <<-EOS.undent
      #!/bin/bash
      export PATH=#{bin}:$PATH
      PREFIX="#{libexec}" exec "#{libexec}/skinny" "$@"
    EOS
  end

  def post_install
    # brew install skinny --without-npm-generator
    return if build.without? "npm-generator"

    # install npm modules under libexec dir
    cd libexec
    system "npm", "install", "yo"
    system "ln", "-s", libexec/"node_modules/yo/cli.js", bin/"yo"
    system "npm", "install", "generator-skinny"
  end

  test do
    system bin/"skinny", "new", "myapp"
  end
end
