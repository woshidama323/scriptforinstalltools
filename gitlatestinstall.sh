#!/bin/bash -x
sudo yum install autoconf libcurl-devel expat-devel gcc gettext-devel kernel-headers openssl-devel perl-devel zlib-devel -y

sudo yum install openssl-devel -y


curl -O -L https://github.com/git/git/archive/v2.16.3.tar.gz

tar -zxvf v2.16.3.tar.gz

cd git-v2.16.3
make clean
make configure
