# Shell
Hello World!
```shell
echo "Hello, World!";
```

常用的shell
```
zsh：推荐，插件oh my zsh的功能有：history, autosuggesion, vim-like
sh
bash
```

常用快捷键

```
ctrl+c: to kill sigint
ctrl+r: to find history
tab: to autofill
```

安装
```
Package manager: apt
搜索: 
1. $ apt search
2. https://command-not-found.com/（推荐）
```

Communication
```shell
Pipe: |
$ ls | grep "make" 或 ls | grep make

Redirect： stdin(> 0) stdout(< 1) stdout(2> 2)
$ ls > ls_out：将内容保存到ls_out
$ grep make < ls_out

复杂形式
$ gcc test.c -o test

如果直接运行./test，则全部输出到stdout（也就是terminal中）
$ ./test

如果使用"2>"，则即将stderr输出到test_err_out中
$ ./test > test_out 2> test_err_out
$ cat test_err_out

备注：shell里stdin是0，stdout是1，还有stderr是2，这个怎么理解？

 - 标准输入（stdin）、标准输出（stdout）和标准错误（stderr）是 Unix-like 系统中每个程序默认的三个文件句柄。它们分别对应着文件描述符 0、1 和 2。

 - 文件描述符是一个整数，用来标识一个打开的文件或设备。在 Unix-like 系统中，每个进程都有自己的文件描述符表，文件描述符是每个打开文件在该表中的唯一标识。

 - 默认情况下，标准输入（stdin）对应着文件描述符 0，标准输出（stdout）对应着文件描述符 1，标准错误（stderr）对应着文件描述符 2。这个规定在 Unix-like 系统中是统一的，不同的程序或 shell 都遵守这个规定。

 - 例如，在命令行中输入命令 cat file1 并回车，cat 程序会读取 file1 的内容，然后将其输出到标准输出（stdout）。如果读取文件时遇到错误，cat 程序会将错误信息输出到标准错误（stderr）。在 shell 中，可以使用重定向运算符将标准输出、标准输入和标准错误重定向到其他文件或设备。
```

Part2: Handy tools
```
 - File: cp, rm, cat, find, head, tail, less, mkdir, ln
 - Simple functions: wort, wc
 - How to use: 
   - -help, --help
   - man [command]
   - tldr [command] (简化版man)
   - command-not-found.com
 - 参考：https://www.geeksforgeeks.org/basic-shell-commands-in-linux/，https://swcarpentry.github.io/shell-novice/reference
 - 更多信息的参考：https://software-carpentry.org/lessons/index.html
```

ag
```
场景：find keyword

```