# TiagoLo Rice

## Download and Setup

 * Run the following script
  ```shell
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config clone --bare https://github.com/tiagolo/dotFiles.git $HOME/.cfg
config checkout
config remote set-url origin git@github.com:tiagolo/dotFiles.git
exit
```
