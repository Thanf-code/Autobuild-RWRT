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

#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

#sed -i '$a src-git helloworld https://github.com/P3TERX/helloworld' feeds.conf.default

#sed -i '$a src-git package https://github.com/Thanf-code/op-packages' feeds.conf.default

#svn co https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall > /dev/null 2>&1

svn co https://github.com/Thanf-code/luci-app-bypass package/luci-app-bypass > /dev/null 2>&1
