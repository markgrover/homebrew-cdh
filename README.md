homebrew-cdh
============

Homebrew packages for CDH

Introduction
============

This set of homebrew packages integrates with Apache Bigtop. In particular, it leverages Apache Bigtop's 
build and install code for various components.

Pre-requisites
==============

There are a few incompatibilities between Macs and Linux that you would need to get around before you get started with installing these packages.

1. Macs by default come with a BSD version of getopt. Bigtop code assumes that you have GNU's getopt installed. Consequently, before you install these brew recipes, you will need to download and install gnu getopt
brew install gnu-getopt
sudo mv /usr/bin/getopt /usr/bin/getopt-bsd
sudo ln -s /usr/local/Cellar/gnu-getopt/1.*/bin/getopt /usr/bin/getopt

Procedure
========
<pre>
brew tap markgrover/homebrew-cdh
brew install cdh-zookeeper
</pre>
