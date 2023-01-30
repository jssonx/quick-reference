# Remote control

1. ssh
2. frp
3. vnc
4. nomachine
5. Termius
6. Secure Shellfish


## vnc

1. 在B上安装vnc server：sudo apt-get install tightvncserver
2. 在B上运行vnc server：tigervncserver -xstartup /usr/bin/xterm
3. 在B上配置vnc server：vncpasswd (设置密码)
4. 在A上安装vnc client：sudo apt-get install xtightvncviewer
5. 在A上连接B：vncviewer B的IP地址:1 (注意IP地址与display number后面需加冒号)
6. 输入密码即可连接B的桌面。