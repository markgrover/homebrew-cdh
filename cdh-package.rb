require 'formula'

# Documentation: https://github.com/cloudera/cdh-package/tree/cdh4.2.0-release

class CdhPackage < Formula
  homepage 'https://github.com/cloudera/cdh-package/tree/cdh4.2.0-release'
  url 'git://github.com/cloudera/cdh-package.git', :tag => 'cdh4.2.0-release'
  sha1 '76a7d23501a84be687d0b50fd9f35706b860ef55'
  version '4.2.0'
  
  def install
    # ENV.j1  # if your formula's build system can't parallelize
    prefix.install Dir['*']
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test zookeeper-3.4.5-cdh`.
    system "false"
  end
end
