# 获取当前系统的发行版
# 支持Ubuntu 
#    Amazon Linux AMI
#    Centos


disversion=$(cat /etc/*-release |grep -E "^NAME=" |cut -d "=" -f 2)
ManagerCommand=
if [[ "$disversion" == "\"Ubuntu\"" ]];then
    
    ManagerCommand=apt-get
elif [[ "$disversion" == "\"Ubuntu\"" || "$disversion" == "\"Amazon Linux AMI\"" || "$disversion" == "\"CentOS Linux\"" ]];then

    ManagerCommand=yum 
else
    echo "error...."
    exit 1
fi


$ManagerCommand install git wget curl gcc -y  
which tar >/dev/null
if [[ $? -ne 0 ]];then
    $ManagerCommand install tar -y 
fi

#下载某一个版本的压缩包，解压，放到/usr/local中
$ManagerCommand update  && wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz && tar -xzf go1.13.4.linux-amd64.tar.gz && mv go /usr/local



# 设置golang的环境变量
{
    echo '# GoLang'
    echo "export GOROOT=/usr/local/go"
    echo 'export PATH=$GOROOT/bin:$PATH'
    echo "export GOPATH=$HOME/go"
    echo 'export PATH=$GOPATH/bin:$PATH'
} >> /etc/profile

source /etc/profile


#install dlv
go get -u github.com/go-delve/delve/cmd/dlv

# install 
go get -u github.com/hashrocket/ws

