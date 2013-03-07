require 'formula'

# Documentation: http://archive.cloudera.com/cdh4/cdh/4/zookeeper-3.4.5-cdh4.2.0/

class CdhZookeeper < Formula
  homepage ''
  url 'http://archive.cloudera.com/cdh4/cdh/4/zookeeper-3.4.5-cdh4.2.0.tar.gz'
  sha1 '76a7d23501a84be687d0b50fd9f35706b860ef55'
  version '3.4.5-cdh4.2.0'
  
  # User defined variables
  PACKAGING_SRC='/usr/local/Cellar/cdh-package/4.2.0/bigtop-packages/src/common/zookeeper'

  # Build time dependencies
  depends_on 'cdh-package' => :build
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build
  #depends_on 'ant' => :build

  # Run time dependencies
  depends_on 'coreutils'
  #depends_on 'shadow-utils'
  #depends_on 'bigtop-utils'

  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize
    system "cp #{PACKAGING_SRC}/* ."
    #prefix.install Dir['~/cdhpkg/common/zookeeper/*']
    system "ls -lrt"
    ENV['FULL_VERSION']="#{version}"
    system "bash", "do-component-build"

    system "sh ./install_zookeeper.sh --build-dir=build/zookeeper-#{version} --doc-dir=#{doc} --prefix=#{prefix}"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test zookeeper-3.4.5-cdh`.
    system "false"
  end
end
