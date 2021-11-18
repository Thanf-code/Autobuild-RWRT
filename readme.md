# OpenWrt firmware for Newifi D2

Auto build OpenWrt firmware for Newifi D2 via GitHub Actions

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/Thanf-code/Autobuild-Newifi_D2?style=for-the-badge&label=Download)](https://github.com/Thanf-code/Autobuild-Newifi_D2/releases/latest)


最近启动编译后，运行至开始编译步骤莫名的自动停止编译的，这个是github的动作，因为云编译浪费资源厉害，所以github要出手，一般在日志或者Actions会出现类似如下语句

The runner has received a shutdown signal. This can happen when the runner service is stopped, or a manually started runner is canceled.

出现这样情况很有可能是连接SSH进去配置过固件的原因，如果有这情况出现，停了编译后也会有一份配置文件的，你下载配置文件，然后把内容覆盖到你编译的对应源码的.config里面，不要进SSH再次编译试试


ssh进去配置app会被取消而且没有config文件生成，解决方法如下

1-可以找一个错误代码（比如缺少依赖的插件代码）添加到diy-part1里面，

2-并在config里选中改错误插件，

3-ssh进去配置后等待自动错误停止编译，

4-此时就会有config文件生成了

5-将生成的config文件覆盖到原config里

6-再次不进入ssh编译
