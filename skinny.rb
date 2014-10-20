require "formula"

class Skinny < Formula
  homepage "http://skinny-framework.org/"
  url "https://github.com/skinny-framework/skinny-framework/releases/download/1.3.4/skinny-1.3.4.tar.gz"
  sha1 "79cb32e4ddc579913445e3514cde62bd6ce66546"
  depends_on "node"

  option "without-npm", "npm will not be installed"

  def install
    node_prefix = libexec
    (libexec/"npm").write_env_script "npm",  :PREFIX => node_prefix
    chmod 0755, libexec/"npm"

    libexec.install Dir["*"]

    (bin/"skinny").write <<-EOS.undent
      #!/bin/bash
      export PATH=#{node_prefix}/bin/:$PATH
      PREFIX="#{node_prefix}" exec "#{libexec}/skinny" "$@"
    EOS
  end

  def post_install
    # brew install skinny --without-npm
    return if build.without? "npm"

    system libexec/"npm", "install", "-g", "yo"
    system libexec/"npm", "install", "-g", "generator-skinny"
  end

end

