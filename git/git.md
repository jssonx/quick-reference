# Git
<!-- TODO：如何使用sourcetree？ -->
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

## Command

### Basics
```
 - git help <command>: get help for a git command
 - git init: creates a new git repo, with data stored in the .git directory
 - git status: tells you what’s going on
 - git add <filename>: adds files to staging area
 - git commit: creates a new commit
   - Write good commit messages!
   - Even more reasons to write good commit messages!
 - git log: shows a flattened log of history
 - git log --all --graph --decorate: visualizes history as a DAG
 - git diff <filename>: show changes you made relative to the staging area
 - git diff <revision> <filename>: shows differences in a file between snapshots
 - git checkout <revision>: updates HEAD and current branch
```

### 实操
#### 版本控制
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

#### 如何写标准的commit msg？
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
git config --global core.editor vim
```

## Reference
https://www.bilibili.com/video/BV1YR4y1E7LX