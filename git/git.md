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
TODO: to complete the course
```

## Reference
https://www.bilibili.com/video/BV1YR4y1E7LX