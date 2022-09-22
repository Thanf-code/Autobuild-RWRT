#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/OpenWrt/R-Wrt/g' package/base-files/files/bin/config_generate

# Modify the version number
sed -i "s/OpenWrt /Thanf build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# ramips机型,默认内核5.4，修改内核为5.10
#sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/ramips/Makefile

# 修改bypass支持lean源码shadowsocksr-libev-ssr-redir/server重命名
#find package/*/ feeds/*/ -maxdepth 5 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
#find package/*/ feeds/*/ -maxdepth 5 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

# 修改bypass依赖为smartdns支持
#find package/*/ feeds/*/ -maxdepth 5 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/smartdns-le/smartdns/g' {}

# Add kernel build user
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="Thanf"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"Thanf"@' .config

# Add kernel build domain
[ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"GitHub Actions"@' .config
