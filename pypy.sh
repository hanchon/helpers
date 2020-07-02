#!/bin/bash
cd ~
mkdir pypy
cd pypy
wget https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v7.3.1-linux64.tar.bz2
tar xf pypy3.6-v7.3.1-linux64.tar.bz2
rm pypy3.6-v7.3.1-linux64.tar.bz2
mv pypy3.6-v7.3.1-linux64/* .
rm -rf pypy3.6-v7.3.1-linux64
echo 'virtualenv -p ~/pypy/bin/pypy3 .venv' >> pypy
chmod +x pypy
echo 'export PATH="$PATH:~/pypy"' >> ~/.bashrc
