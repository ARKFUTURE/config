#!/bin/bash
MIRROR="https://ghfast.top/"
echo "更新配置文件"
echo "! 此操作会覆盖掉您的配置文件 !"
echo "此脚本仅适用测试最新的ARKFUTURE nossl配置 以及 更新ARKFUTURE的默认配置"
if [ "$(id -u)" -ne 0 ]; then
    echo "错误：请使用 sudo 或 root 权限执行本脚本"
    exit 1
fi
echo "现在是root用户权限"
sleep 3
echo "开始下载配置文件到/etc/inspircd"
cd /etc/inspircd
rm -rf *
mkdir conf
mkdir txt
mkdir ssl
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/inspircd.conf"
cd /etc/inspircd/conf
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/helpop.conf"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/opers.conf"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/permchannels.conf"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/xline.db"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/modulesconf.conf"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/ascii.conf"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/conf/auth.sq3"
cd /etc/inspircd/txt
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/txt/motd.txt"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/txt/opermotd.txt"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/txt/quotes.txt"
wget "${MIRROR}https://raw.githubusercontent.com/ARKFUTURE/config/refs/heads/main/inspircd/txt/rules.txt"
cd /etc/inspircd/
chmod 644 /etc/inspircd/ -R
sleep 3
echo "脚本运行完成 请修改为您自己的配置文件 当前ARKFUTURE配置为"
head -n 1 ./inspircd.conf