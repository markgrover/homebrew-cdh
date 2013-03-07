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
- You are expected to have home brew installed on your mac. Home brew is a package management system for Mac. To install, homebrew, please visit http://mxcl.github.com/homebrew/, go the bottom of the page to get the command to install.
- You are expected to have git installed
<pre>
brew install git
</pre>
- You need XCode installed on your Mac for tools required to build certain code when packages are installed.
- Macs by default come with a BSD version of getopt. Bigtop code assumes that you have GNU's getopt installed. Consequently, before you install these brew recipes, you will need to download and install gnu getopt
<pre>
brew install gnu-getopt
sudo mv /usr/bin/getopt /usr/bin/getopt-bsd
sudo ln -s /usr/local/Cellar/gnu-getopt/1.*/bin/getopt /usr/bin/getopt
</pre>

Procedure
========
<pre>
brew tap markgrover/homebrew-cdh
brew install cdh-zookeeper
</pre>
