# oh-my-zsh + tmu + powerlevel10k 配置完美终端环境

## Theme
reference: 
1. https://zhuanlan.zhihu.com/p/265525597
2. https://github.com/romkatv/powerlevel10k#installation
3. VSCODE terminal使用zsh：https://www.jianshu.com/p/6d21d3484444
source ~/.zshrc

## 目录跳转

1. 命令 d 可以显示最近几次的工作目录， 输入数字可以快速跳转
2. .. 可以直接调转到上级目录， ...可以直接跳转到上上级目录
3. 输入目录名可直接进入对应目录， 无需输入cd

## 自动补全
路径补全、命令补全，命令参数补全，插件内容补全等等。触发补全只需要按一下或两下 tab 键，补全项可以使用 ctrl+n/b上下左右切换。

## 快速解压
extract （自带，无需手动安装）这个插件可以实现压缩包的快速解压， 各种格式都可以快速解压，无需记住复杂的解压命令。

## tmux使用
reference: https://www.ruanyifeng.com/blog/2019/10/tmux.html]

### 启动与退出
启动：键入tmux命令，就进入了 Tmux 窗口。
退出：按下Ctrl+d或者显式输入exit命令，就可以退出 Tmux 窗口。

### 前缀键
Tmux 窗口有大量的快捷键。所有快捷键都要通过前缀键唤起。默认的前缀键是Ctrl+b，即先按下Ctrl+b，快捷键才会生效。

举例来说，帮助命令的快捷键是Ctrl+b ?。它的用法是，在 Tmux 窗口中，先按下Ctrl+b，再按下?，就会显示帮助信息。

然后，按下 ESC 键或q键，就可以退出帮助。

窗格快捷键
```
tmux 基本用法
C代表Ctrl，按下Ctrl+b之后tmux不会有任何反应，只要继续再按下一个键就会有反应。

tmux #开启tmux
tmux ls #显示已有tmux列表（C-b s）
tmux attach-session -t 数字 #选择tmux
 - Ctrl+b %：划分左右两个窗格。
 - Ctrl+b "：划分上下两个窗格。
 - Ctrl+b <arrow key>：光标切换到其他窗格。<arrow key>是指向要切换到的窗格的方向键，比如切换到下方窗格，就按方向键↓。
 - Ctrl+b ;：光标切换到上一个窗格。
 - Ctrl+b o：光标切换到下一个窗格。
 - Ctrl+b {：当前窗格与上一个窗格交换位置。
 - Ctrl+b }：当前窗格与下一个窗格交换位置。
 - Ctrl+b Ctrl+o：所有窗格向前移动一个位置，第一个窗格变成最后一个窗格。
 - Ctrl+b Alt+o：所有窗格向后移动一个位置，最后一个窗格变成第一个窗格。
 - Ctrl+b x：关闭当前窗格。
 - Ctrl+b !：将当前窗格拆分为一个独立窗口。
 - Ctrl+b z：当前窗格全屏显示，再使用一次会变回原来大小。
 - Ctrl+b Ctrl+<arrow key>：按箭头方向调整窗格大小。
 - Ctrl+b q：显示窗格编号。
```
窗口快捷键
```
 - Ctrl+b c：创建一个新窗口，状态栏会显示多个窗口的信息。
 - Ctrl+b p：切换到上一个窗口（按照状态栏上的顺序）。
 - Ctrl+b n：切换到下一个窗口。
 - Ctrl+b <number>：切换到指定编号的窗口，其中的<number>是状态栏上的窗口编号。
 - Ctrl+b w：从列表中选择窗口。
 - Ctrl+b ,：窗口重命名。
```

### 会话管理

#### 新建会话
第一个启动的 Tmux 窗口，编号是0，第二个窗口的编号是1，以此类推。这些窗口对应的会话，就是 0 号会话、1 号会话。

使用编号区分会话，不太直观，更好的方法是为会话起名。下面命令新建一个指定名称的会话。

```shell
$ tmux new -s <session-name>
```

#### 分离会话
在 Tmux 窗口中，按下Ctrl+b d或者输入tmux detach命令，就会将当前会话与窗口分离。
```
$ tmux detach
```
上面命令执行后，就会退出当前 Tmux 窗口，但是会话和里面的进程仍然在后台运行。

tmux ls命令可以查看当前所有的 Tmux 会话。

```
$ tmux ls
# or
$ tmux list-session
```

#### 接入会话

tmux attach命令用于重新接入某个已存在的会话。

```
# 使用会话编号
$ tmux attach -t 0

# 使用会话名称
$ tmux attach -t <session-name>
```

#### 杀死会话
tmux kill-session命令用于杀死某个会话。

```
# 使用会话编号
$ tmux kill-session -t 0

# 使用会话名称
$ tmux kill-session -t <session-name>
```

#### 切换会话
tmux switch命令用于切换会话。
```
# 使用会话编号
$ tmux switch -t 0

# 使用会话名称
$ tmux switch -t <session-name>
```
#### 重命名会话

tmux rename-session命令用于重命名会话。
```
$ tmux rename-session -t 0 <new-name>
```
### 最简操作流程
```
新建会话tmux new -s my_session。
在 Tmux 窗口运行所需的程序。
按下快捷键Ctrl+b d将会话分离。
下次使用时，重新连接到会话tmux attach-session -t my_session。
```

### 其他重要命令
```
# 划分左右两个窗格
$ tmux split-window -h

# 光标切换到左边窗格
$ tmux select-pane -L

# 光标切换到右边窗格
$ tmux select-pane -R
```

## Reference
https://zhuanlan.zhihu.com/p/539566646