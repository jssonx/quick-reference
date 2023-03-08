# Shell

## Useful links

- https://www.cs.cornell.edu/courses/cs2043/2019sp/command_index.html
- https://explainshell.com/

## CRLF 和 LF

Windows uses a combination of Carriage Return (CR) and Line Feed (LF) characters as a line ending, whereas Unix-based systems use only the Line Feed (LF) character.

## Part: Intro

Hello World!

```shell
$ cd -: 快速回答之前所在的目录
$ tree
$ ll
$ ll 目录
$ rm -rf *
$ echo "Hello, World!";
$ date
$ echo hello
$ echo hello > hello.txt
$ cat < hello.txt > hello2.txt
$ cat > Dockerfile

$ ls -alh: show all files in a readable format

$ mkdir
$ rmdir -p: recursively removes a directory

$ file: displays the file type
$ cp -r: recursively copy files
$ mv afile dir: move files
$ head: displays the first line of a file
    - head -n 20 afile: displays the first 20 lines ef the file
$ tail: display the last line of a file
    - tail -n 20 afile: displays the last 20 lines of the file

$ find

$ grep
$ grep -n uni afile

$ wget URL
$ wget -O new_file_name URL

$ ping
$ whois

$ tar -cf file.tar f1 f2 f3: creates a tar containing files

$ history: lists command history
$ !history#: execute the #-th command in the history

$ !!: repeats the last command
```

```
echo > 和 echo >> 都可以用来将文本输出到文件中。

echo > 会将文本输出到文件中，并覆盖原有的文件内容。

echo >> 会将文本输出到文件中，并在原有文件内容后追加新的文本。
```

常用的 shell

```
zsh：推荐，插件oh my zsh的功能有：history, autosuggesion, vim-like
- 安装：
  - zsh：https://zhuanlan.zhihu.com/p/43704296
  - 插件：https://segmentfault.com/a/1190000039860436
sh
bash
- VSCODE terminal使用zsh：https://www.jianshu.com/p/6d21d3484444
```

常用快捷键

```
ctrl+c: to kill sigint
ctrl+r: to find history
tab: to autofill
ctrl+l: clean
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

## Part2: Handy tools

```
 - File: cp, rm, cat, find, head, tail, less, mkdir, ln
 - Simple functions: wort, wc
 - How to use:
   - -help, --help
   - man [command]
   - tldr [command] (简化版man)
   - command-not-found.com
 - 参考：https://www.geeksforgeeks.org/basic-shell-commands-in-linux/，https://swcarpentry.github.io/shell-novice/reference
 - 更多信息的参考：
  - https://software-carpentry.org/lessons/index.html
  - https://missing.csail.mit.edu/2020/
```

ag

```
注：command not found的话sudo apt-get install 搭配cnf.com即可
场景：find keyword，支持regex
加强版的grep
```

awk

```shell
常规用例：
 - average, max, min
 - get data in a certain column
 - simple condional logic

$ cat tmp | awk '{print $2}'
$ cat tmp | awk '{if($1 > 3) print $2}'
```

sed

```
$ sed -n '3 p' ./tmp
```

## Part3: shell scripts

hello world

```shell
$ bash ./run.sh
```

```
注：if test $file = "run.sh" shell脚本中=符号两边有空格和没有空格有什么区别？
 - 在 shell 脚本中，“=”符号用于进行字符串比较。如果两边有空格，则表示比较两边的字符串是否完全相等。如果两边没有空格，则表示判断变量是否已被设置。

 - 例如：if test $file = "run.sh"

 上面的代码检查 $file 变量是否与字符串 "run.sh" 完全相等。

 - 而下面的代码检查 $file 变量是否已被设置：if test $file= "run.sh"

 如果没有空格，那么 shell 会尝试执行 $file= "run.sh"，这将会导致错误。
```

## Part4: examples

1. Dummy experiment

```shell
$ ./run_dummy.sh
```

绘图：gnuplot

2. 计算系统的 p99

```shell
$ vim ./read_req.sh
```

3. 脚本

```
mcd () {
    mkdir -p "$1"
    cd "$1"
}

Here $1 is the first argument to the script/function. Unlike other scripting languages, bash uses a variety of special variables to refer to arguments, error codes, and other relevant variables. Below is a list of some of them. A more comprehensive list can be found here.

$0 - Name of the script
$1 to $9 - Arguments to the script. $1 is the first argument and so on.
$@ - All the arguments
$# - Number of arguments
```

## Reference

- http://b23.tv/88eEQ4w
- https://git-scm.com/book/en/v2
