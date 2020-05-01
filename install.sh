#!/bin/sh
# This is a comment!

cd


echo "installing sublister"
git clone https://github.com/aboul3la/Sublist3r.git
sudo pip install -r requirements.txt

echo "installing a2sv"
git clone https://github.com/hahwul/a2sv.git
pip install argparse
pip install netaddr
pip install netaddr



echo "installing Dmitry"
wget http://pkgs.fedoraproject.org/repo/pkgs/DMitry/DMitry-1.3a.tar.gz/8d578ba16de34b5cbebf6b767181b00d/DMitry-1.3a.tar.gz
tar xzvf DMitry-1.3a.tar.gz
cd DMitry-1.3a/
./configure
make
sudo make install

echo "installing snitch"
git clone https://github.com/Smaash/snitch.git

