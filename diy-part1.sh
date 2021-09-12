#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.defaultault
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#sed -i 's@coolsnowwolf/packages@P3TERX/packages@' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git small https://github.com/Thanf-code/small' feeds.conf.default          # 科学上网基本依赖（编译bypass、openclash需要，passwall不需要）
#svn co https://github.com/Thanf-code/luci-app-bypass package/luci-app-bypass > /dev/null 2>&1
#svn co https://github.com/garypang13/openwrt-bypass package/luci-app-bypass > /dev/null 2>&1
svn co https://github.com/Thanf-code/OpenAppFilter package/luci-app-oaf > /dev/null 2>&1
svn co https://github.com/Thanf-code/iptvhelper package/luci-app-iptvhelper > /dev/null 2>&1
git clone https://github.com/Hyy2001X/luci-app-autoupdate.git package/luci-app-autoupdate
#git clone https://github.com/coolsnowwolf/tcping.git package/tcping
#git clone https://github.com/Thanf-code/op-packages/tree/main/luci-app-control-webrestriction.git package/luci-app-control-webrestriction
#git clone https://github.com/Thanf-code/op-packages/tree/main/luci-app-control-weburl.git package/luci-app-control-weburl
