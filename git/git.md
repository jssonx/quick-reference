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

 - git diff <filename>: show changes you made relative to the staging area
 - git diff <revision> <filename>: shows differences in a file between snapshots
 - git checkout <revision>: updates HEAD and current branch

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