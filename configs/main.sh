CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_d-team_newifi-d2=y

# IPv6 支持
CONFIG_IPV6=y
CONFIG_KERNEL_IPV6=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_6rd=y
CONFIG_PACKAGE_6to4=y

# Wireless 驱动程序(开源)
CONFIG_PACKAGE_kmod-mt76=y

# Wireless 驱动程序(闭源)
# CONFIG_PACKAGE_luci-app-mtwifi is not set
# CONFIG_PACKAGE_mt_wifi is not set
# CONFIG_PACKAGE_kmod-mt7603e is not set
# CONFIG_PACKAGE_kmod-mt76x2e is not set

# USB 相关
CONFIG_PACKAGE_automount=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_smartmontools=y
CONFIG_PACKAGE_luci-app-usb3disable=y
CONFIG_PACKAGE_luci-app-hd-idle=y

## USB 网络共享
CONFIG_PACKAGE_kmod-usb-net=y
CONFIG_PACKAGE_kmod-usb-net-asix=y
CONFIG_PACKAGE_kmod-usb-net-cdc-ether=y
CONFIG_PACKAGE_kmod-usb-net-cdc-ncm=y
CONFIG_PACKAGE_kmod-usb-net-hso=y
CONFIG_PACKAGE_kmod-usb-net-huawei-cdc-ncm=y
CONFIG_PACKAGE_kmod-usb-net-ipheth=y
CONFIG_PACKAGE_kmod-usb-net-rndis=y
CONFIG_PACKAGE_libudev-fbsd=y
CONFIG_PACKAGE_usbutils=y

## USB 网络存储
CONFIG_PACKAGE_autosamba=y
CONFIG_PACKAGE_luci-app-samba=y
# CONFIG_PACKAGE_luci-app-samba4 is not set
CONFIG_PACKAGE_luci-app-vsftpd=y

# LUCI Appliciations

CONFIG_PACKAGE_luci-app-udpxy=y
CONFIG_PACKAGE_luci-app-uhttpd=y
CONFIG_PACKAGE_luci-app-upnp=y


CONFIG_PACKAGE_luci-app-control-weburl=y
CONFIG_PACKAGE_luci-app-omcproxy=y


# 动态dns相关
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_ddns-scripts_aliyun=y
CONFIG_PACKAGE_ddns-scripts_dnspod=y
CONFIG_PACKAGE_ddns-scripts_cloudflare.com-v4=y
CONFIG_PACKAGE_ddns-scripts_no-ip_com=y

# 网络性能
CONFIG_PACKAGE_luci-app-iperf3-server=y
CONFIG_PACKAGE_iperf3=y

# 科学上网插件
# CONFIG_PACKAGE_luci-app-bypass is not set
CONFIG_PACKAGE_luci-app-vssr=y
# CONFIG_PACKAGE_luci-app-ssr-plus is not set

# 其他软件包
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_xray-geodata=y
CONFIG_PACKAGE_xz=y
CONFIG_PACKAGE_xz-utils=y
# CONFIG_PACKAGE_dnsmasq is not set
