# Ubuntu Command

查询制定路径下包含某个关键字的所有文件
```bash
$ grep -r "nohup ./frps -c frps.ini &" /etc/
```
查询曾是用过的包含某个关键字的所有命令
```bash
$ history | grep "nohup"
```