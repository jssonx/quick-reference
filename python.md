# Python

```bash
$ wget https://bootstrap.pypa.io/get-pip.py
$ python get-pip.py

WARNING: The script wheel is installed in '/home/jsn/.local/bin' which is not on PATH.

$ vim ~/.bashrc
# $ export PATH=/home/jsn/.local/bin:$PATH
$ export PATH="$PATH:/home/jsn/.local/bin"
$ source ~/.bashrc
 - zsh uses env profile ~/.zshrc, not ~/.bashrc.
 - so you need to append your env settings to .zshrc file and then
 - source ~/.zshrc
```
