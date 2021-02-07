#!/bin/bash

# 安装Git
yum install -y git

# 生成ssh key
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
echo $(cat ~/.ssh/id_rsa.pub)
echo "将ssh秘钥添加到github后点击任意键继续"

# 等待点击任意按键继续
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
break ;
else
echo "waiting for the keypress"
fi
done

# 创建目录clone vps repo
mkdir /Codes
cd /Codes
git clone git@github.com:zzxzhang/vps.git

chmod +x ./scripts/*.sh
sh ./scripts/init.sh



