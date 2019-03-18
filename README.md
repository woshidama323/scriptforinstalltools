# scriptforinstalltools
专门用于安装常用工具

yum upate && yum upgrade -y
yum install -y gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto udns-devel    
            libev-devel libsodium-devel mbedtls-devel git m2crypto c-ares-devel

yum install -y rng-tools
rngd -r /dev/urandom

cd /opt && git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev/ && git submodule update --init --recursive
./autogen.sh
./confugure
make&& make install 

adduser --system --no-create-home -s /bin/false shadowsocks
mkdir -m 755 /etc/shadowsocks
echo "{ \
    \"server\":\"0.0.0.0\",\
    \"server_port\":8388,\
    \"password\":\"your_password\",\
    \"timeout\":300,\
    \"method\":\"aes-256-gcm\",\
    \"fast_open\": true }" |tee /etc/shadowsocks/shadowsocks.json
   
   vi /etc/systemd/system/shadowsocks.service
   systemctl daemon-reload
   systemctl enable shadowsocks
   systemctl start shadowsocks
   systemctl status shadowsocks
