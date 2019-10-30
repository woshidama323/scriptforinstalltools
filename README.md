# scriptforinstalltools
专门用于安装常用工具

yum update && yum upgrade -y
yum install -y gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto udns-devel libev-devel libsodium-devel mbedtls-devel git m2crypto c-ares-devel

yum install -y rng-tools
rngd -r /dev/urandom

cd /opt && git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev/ && git submodule update --init --recursive
./autogen.sh
./confugure
make&& make install 

adduser --system --no-create-home -s /bin/false shadowsocks

pip install shadowsocks

mkdir -m 755 /etc/shadowsocks
echo "{ \
    \"server\":\"0.0.0.0\",\
    \"server_port\":8388,\
    \"password\":\"your_password\",\
    \"timeout\":300,\
    \"method\":\"aes-256-gcm\",\
    \"fast_open\": true }" |tee /etc/shadowsocks/shadowsocks.json
   
   vi /etc/systemd/system/shadowsocks.service
[Unit]
Description=Shadowsocks
[Service]
TimeoutStartSec=0
ExecStart=/usr/bin/ssserver -c /etc/shadowsocks.json
[Install]
WantedBy=multi-user.target

   systemctl daemon-reload
   systemctl enable shadowsocks
   systemctl start shadowsocks
   systemctl status shadowsocks

2019-9

http_proxy=socks5://127.0.0.1:1080 curl myip.ipip.net


## 直接用doacker的方式启动更为方便

https://shadowsocks.org/en/download/servers.html


