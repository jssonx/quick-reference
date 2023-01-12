# Git：游戏检查点

## Command

### Basics
```
 - git help <command>: get help for a git command
 - git init: creates a new git repo, with data stored in the .git directory
 - git status: tells you what’s going on
 - git add <filename>: adds files to staging area

 - git commit: creates a new commit
 - git commit --amend
 - git commit -a -m ""
 - git commit -am ""
 - git commit -s
  - try to keep each commit focused on a single thing
  - 使用现在时作为commit message，比如make foo do something
  - 前后用法保持一致就行

 - git log: shows a flattened log of history
 - git log --all --graph --decorate: visualizes history as a DAG
 - git log --oneline
 - git log --pretty

 - .gitignore
  - referemce: https://www.toptal.com/developers/gitignore/

快速启动
init a new one
1. cd ~/.ssh
2. ssh-keygen -o -t rsa -C "email@example.com"
3. cat id_rsa.pub
4. git config --global user.email "you@example.com"
5. git config --global user.name "Your Name"

first time local initialization 
1. git clone git@github.com:cameronmcnz/rock-paper-scissors.git
2. echo "# cs143-compilers" >> README.md
3. git init
4. git add README.md
5. git commit -m "first commit"
6. git branch -M main
7. git remote add origin git@github.com:jssonx/cs143-compilers.git
8. git push -u origin main

daily updates
$ git status
$ git add .
$ git add filea fileb ...
$ git commit -m "abc"
$ git push -u origin main
```

### Branches: 书的书签

#### Branching
```
$ git branch: shows branches
$ git branch <name>: creates a branch
# git branch -c <name>: creates a branch

# git branch -d <name>
# git branch -D <name>: force deletes the branch

# git branch -m <name>: change name of the branch

$ git switch <name>
 - switch之前要commit当前信息

$ git checkout <name>
$ git checkout -b <name>: creates a branch and switches to it
same as git branch <name>; git checkout <name>
```

#### Merging
```
$ git merge <revision>: merges into current branch

don't do anything experiments on main
please on feature/debug branch
 - we merge branches
 - we always merge to the current HEAD branch

类型一：Fast-forward merge：只要是直系关系就会是Fast-forward
 - main上没有修改，只是在branch上修改了一部分之后，
 - 回到main然后将新的branch上的修改merge回来
 - 所有新的branch上的commit都会merge到main
 - 总结：只在branch上commit，不在main上commit => fast forward

类型二：没有冲突，type2merge从main分支，然后main和type2merge都commit过，就可能会有conflict
 - new branch上有更新，同时main上也有更新
 - 两者不存在冲突
 - 回到main，使用git merge type2merge
 - git会在main上创建一个新的commit来merge分支上的信息
 - 没有冲突的原因是两个分支没有修改相同的文件
 - Optional: git branch -d type2merge
 - 只有commit才是存档点，save文件不是
 - 总结：既在branch上commit，也在main上commit，但没conflict => merge without conflict

类型三：有冲突
 - 修改了同一份文件
 - 在main上 git merge type3merge
 - 报conflict错误
 - 打开conflict的文件，删除三个区域界，然后保留需要的代码
 - 保存并关闭文件
 - git add 这份文件
 - git commit -m "resolve conflicts"
 - 总结：既在branch上commit，也在main上commit，有conflict => merge with conflict

$ git mergetool: use a fancy tool to help resolve merge conflicts
$ git rebase: rebase set of patches onto a new base
```

### Diff
保存文件之后就可以git diff了
```
$ git diff
$ git diff HEAD
$ git diff --cached 或 git diff --staged
```

`git diff` compares working directory and the index.

`git diff HEAD` compares working directory and the last commit.

`git diff --cached` compares the index and the last commit.

`the index` refers to the staging area

```
$ git diff branch1 branch2
 - 比较两个分支下所有文件的区别
```

```
$ git diff commit1 commit2
 - 比较两个commit下所有文件的区别
 - 比较两个文件的hash
 - 文件的hash可以通过git log --oneline获得
```

### Stashing
 - 场景：开发者A有两个分支main和feature1。
 - A目前在frature1上写了一些代码还没commit，但突然他需要switch到main去做一些工作。
 - 如果两个分支没有conflict，那么switch会将新的修改后的信息带到main分支上
 - 但是feature1上这些新文件他不想现在就merge到main上
 - 那么可以使用stashing
 - 或者如果有conflict，那么将无法switch
 - 除非commit或者stash
 - 但是如果不觉得这些修改值得一次commit
 - 那么可以选择stash

```
$ git stash
$ git stash pop

$ git stash apply：和pop的区别是，pop之后stash中保存的文件就删除了，但apply之后stash中保存的文件还会继续在
```

`git stash`命令会将当前工作目录中的未提交的更改和文件存储在一个"贮藏"（stash）中，并将工作目录还原到最后一次提交(commit)的状态。这样可以在不丢失更改的情况下切换到另一个分支或者恢复到清理的状态。

有多个stash的情况（少见）
```
$ git stash list
$ git stash apply stash@{2} # 根据id可以调出指定的stash
```

```
$ git stash drop
$ git stash drop stash@{2}
```

### Remote
```
$ git remote: list remotes

$ git remote add <name> <url>: add a remote

$ git push <remote> <local branch>:<remote branch>: send objects to remote, and update remote reference

$ git branch --set-upstream-to=<remote>/<remote branch>: set up correspondence between local and remote branch
$ git fetch: retrieve objects/references from a remote
$ git pull: same as git fetch; git merge
$ git clone: download repository from remote
```

### Undo
```
$ git commit --amend: edit a commit’s contents/message
$ git reset HEAD <file>: unstage a file
$ git checkout -- <file>: discard changes
```

### Advanced Git
```
$ git config: Git is highly customizable
$ git clone --depth=1: shallow clone, without entire version history *
$ git add -p: interactive staging
$ git rebase -i: interactive rebasing
$ git blame: show who last edited which line *
$ git stash: temporarily remove modifications to working directory *
$ git bisect: binary search history (e.g. for regressions)
.gitignore: specify intentionally untracked files to ignore *
```








----------------------------------------------------------------
## 场景举例

### 如何写标准的commit message
references:
 - 模板与设置模板：https://zj-git-guide.readthedocs.io/zh_CN/latest/message/%5Bgitmessage%5D%E6%8F%90%E4%BA%A4%E6%A8%A1%E6%9D%BF/

模板
```
# head: <type>(<scope>): <subject>
# - type: feat, fix, docs, style, refactor, test, chore
# - scope: can be empty (eg. if the change is a global or difficult to assign to a single component)
# - subject: start with verb (such as 'change'), 50-character line
#
# body: 72-character wrapped. This should answer:
# * Why was this change necessary?
# * How does it address the problem?
# * Are there any side effects?
#
# footer: 
# - Include a link to the ticket, if any.
# - BREAKING CHANGE
#
```

修改全局配置文件~/.gitconfig，添加
```
[commit]
    template = ~/.gitmessage
```

设置默认编辑器
```
$ git config --global core.editor vim
```

### 回滚与版本控制
```shell
$ git init
$ git branch -m main
$ git status
$ ls -alh
$ echo "hello git" >> hello.txt
$ git add hello.txt
$ git commit -m "init commit"
$ git log
$ echo "test2" >> world.txt   
$ git add hello.txt
$ git commit -m "add world.txt"
$ git log
$ git checkout 6064ad7fece0d264897bc5806dc715e0e204dc42 （回滚）
$ echo "one new line" >> hello.txt
$ git diff hello.txt
```

### Debugging
想要加很多log，但是bug改完之后要把这些log删掉。但是又不想污染主分支

```
$ git status
$ git checkout -b debug
$ git checkout main
$ git checkout debug
"add in debug branch"
$ git commit -asm "debug: add info"
$ git commit -as
$ git log
$ git log --oneline
```




----------------------------------------------------------------
## Git的结构介绍
### Snapshots
文件在git中被称为blob
目录在git中被称为tree
```
<root> (tree)
|
+- foo (tree)
|  |
|  + bar.txt (blob, contents = "hello world")
|
+- baz.txt (blob, contents = "git is wonderful")
```

### Data model as Code
```
// a file is a bunch of bytes
type blob = array<byte>

// a directory contains named files and directories
type tree = map<string, tree | blob>

// a commit has parents, metadata, and the top-level tree
type commit = struct {
    parents: array<commit>
    author: string
    message: string
    snapshot: tree
}
```
### Objects and content-addressing

In Git data store, all objects are content-addressed by their SHA-1 hash.

```
type object = blob | tree | commit

objects = map<string, object>

def store(object):
    id = sha1(object)
    objects[id] = object

def load(id):
    return objects[id]
```

### References as Code
```
references = map<string, string>

def update_reference(name, id):
    references[name] = id

def read_reference(name):
    return references[name]

def load_reference(name_or_id):
    if name_or_id in references:
        return load(references[name_or_id])
    else:
        return load(name_or_id)
```

### Repositories & Staging Area

A Git repository: objects and references

## Reference
https://www.bilibili.com/video/BV1YR4y1E7LX