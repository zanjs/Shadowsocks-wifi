#!/bin/sh
#
echo ''
echo '/*教程请参考:极路由Shadowsocks家庭无痛翻墙实践*/'
echo ''
echo ''
echo '那一天,'
echo '人类终于回想起了,'
echo '曾经一度被他们所支配的恐怖,'
echo '还有被囚禁于鸟笼中的那份屈辱.'
echo ''
echo '進撃の巨人 諫山創'
echo ''
sleep 2
echo 'Building environment... 创建临时目录ing'
echo ''
mkdir /tmp/geewan
cd /tmp/geewan
echo 'Done! 成功创建临时目录!'
echo '
'
sleep 3
echo 'Downloading files... 下载插件ing'
echo '
'
curl -k -o ss.tar.gz ./ss.tar.gz
echo 'Done! 下载完成'
echo '
'
sleep 3
echo 'Installing... 安装ing'
if test -e /usr/lib/lua/luci/view/admin_web/plugin/shadowsocks.htm;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else
if test -e /etc/config/ss-redir;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else tar xzvf ss.tar.gz -C / >>/dev/null;
fi
fi
echo 'Done! 插件安装成功!'
echo '
'
sleep 3
echo 'adding uninstall information... 准备删除临时文件...'
echo '
'
echo '
' >>/usr/lib/opkg/status
echo 'Package: geewan-ss' >>/usr/lib/opkg/status
echo 'Version: master-20130924-eb9d31869e1d7590cd8c2fb1e7d226ac6cf32fad-20141024' >>/usr/lib/opkg/status
echo 'Provides:' >>/usr/lib/opkg/status
echo 'Status: install hold installed' >>/usr/lib/opkg/status
echo 'Architecture: ralink' >>/usr/lib/opkg/status
echo 'Installed-Time: 1422509506' >>/usr/lib/opkg/status
echo 'Auto-Installed: yes' >>/usr/lib/opkg/status
echo '
' >>/usr/lib/opkg/status
echo 'cleanning temporary files... 清理临时文件ing'
echo '
'
if test -e /tmp/luci-indexcache;
then rm /tmp/luci-indexcache&&echo 'Done! 清理完成 '&&echo '
';
else echo 'luci-cache does not exist! 无法找到luci-cache,请确定是否是极路由环境'&&echo '
'
fi
rm -rf /tmp/geewan
sleep 3
echo 'the whole installation Success! 插件成功安装!'
echo '1987年9月14日21时07分'
echo '中国第一封电子邮件'
echo '从北京发往德国'
echo '越过长城，走向世界'
echo 'Done! Hello World! 一切就绪,你好世界!'



