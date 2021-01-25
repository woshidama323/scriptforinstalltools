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



|                     Legacy utility                     |    Replacement command     |                Note                 |
| :----------------------------------------------------: | :------------------------: | :---------------------------------: |
|   [ifconfig](https://en.wikipedia.org/wiki/Ifconfig)   |  ip addr, ip link, ip -s   |   Address and link configuration    |
| [route](https://en.wikipedia.org/wiki/Route_(command)) |          ip route          |           Routing tables            |
|                          arp                           |          ip neigh          |              Neighbors              |
|                        iptunnel                        |         ip tunnel          |               Tunnels               |
|                         nameif                         | ifrename, ip link set name |      Rename network interfaces      |
|                        ipmaddr                         |          ip maddr          |              Multicast              |
|    [netstat](https://en.wikipedia.org/wiki/Netstat)    |    ip -s, ss, ip route     | Show various networking statistics  |
|                         brctl                          |           bridge           | Handle bridge addresses and devices |


## 获取本地ip地址的方法cpp 
https://stackoverflow.com/questions/49335001/get-local-ip-address-in-c

centos 8 安装开发工具
dnf group install "Development Tools"

dnf group install  "Development Tools" -y

 

## markdown 转 PDF 的方法，同时带生成引用文献


[资料](https://gist.github.com/maxogden/97190db73ac19fc6c1d9beee1a6e4fc8)


pandoc --filter pandoc-citeproc --bibliography=myref.bib --csl=chinese-gb7714-2005-numeric.csl --variable papersize=a4paper -s paper_test.md -o paper.pdf


需要工具pandoc pdflatex


## 本地机器 让两个远程的服务器直传数据
scp -3  -r -i xxx.pem hello@10.10.10.10:/data hello@10.11.11.11:/data

条件是 两个服务器用的是同一个私钥   如果不是需要在两台服务器上配置下各自的rsa 

## git 自己未知道的信息


This will tell git you want to start ignoring the changes to the file
```
git update-index --assume-unchanged path/to/file
```

When you want to start keeping track again
```
git update-index --no-assume-unchanged path/to/file
　　
```
 
## mac 常用命令集锦

1. 查询gpu相关信息 system_profiler SPDisplaysDataType

2. 磁盘查询相关 diskutil 

3. cuda 相关信息
https://stackoverflow.com/questions/38566367/installing-cuda-via-brew-and-dmg

https://my.oschina.net/u/4408961/blog/3339845


## sort 去重

https://open.oregonstate.education/computationalbiology/chapter/sorting-first-and-last-lines/


## bash 数组的使用

1. arr=()   ${#arr[@]}

## github 常用方法

1. github上比较两个branch或者tag的方法

https://github.com/filecoin-project/lotus/compare/v1.2.0...v1.1.2

### 网络问题排查

1. netstat -antn|grep 10.10.10.10

2. tcpdump,tcpflow

3. ss 

4. lsof


### 数据库安装教程
postgres  https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/


### 找到两个集合的交集

grep找到两个文件的交集
grep  -f /tmp/harry115 /tmp/harrysectorlistbig2 |sort -u

### 远端服务器安装jupyter 本地访问的方法

ssh -L 8778:localhost:8888 [username]@[ip]     方式登录到远端服务器你中，然后启动jupyter  其中8888为远端jupyter的端口 8778为本地端口号

jupyter notebook --no-browser

启动之后 可以找到url 登录到jupyter中 注意修改下本地端口号

如果遇到创建或者打开文件的时候出现 500报错，可以尝试 [pip3 install --upgrade --user nbconvert](https://github.com/jupyter/notebook/issues/3629)


### python 常见问题记录
```shell
  安装最新的pip的方法（ubuntu上）
  curl https://bootstrap.pypa.io/get-pip.py | python3
```
