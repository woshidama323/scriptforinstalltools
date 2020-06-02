# scriptforinstalltools
http_proxy=socks5://127.0.0.1:1080 curl myip.ipip.net


## 直接用doacker的方式启动更为方便

https://shadowsocks.org/en/download/servers.html


## 安装golang的脚本使用

1. 只支持 centos ubuntu 

wget -O -q - https://github.com/woshidama323/scriptforinstalltools/raw/master/latestgolang.sh|bash


## centos 7 上安装gcc的方法 默认版本

yum -y update 

yum group list

yum group install -y "Development Tools"

## docker 如果想将image保存到本地，需要用

docker save busybox > busybox.tar

如果需要用docker load 进行装载

## centos7 上安装git2.0版本

https://computingforgeeks.com/how-to-install-latest-version-of-git-git-2-x-on-centos-7/
centos7 上安装必要的开发工具
  yum groups list
  yum groups install Development Tools
  yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
  yum install https://centos7.iuscommunity.org/ius-release.rpm
  yum install git2u-all
  yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.7-1.x86_64.rpm
  yum install git2u-all


