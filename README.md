# dotfiles
Repo to keep track of my dotfile configurations. 

## Tree

```
$ tree -I ".git" -a

.
├── LICENSE
├── README.md
├── atom
│   ├── config.cson
│   ├── init.coffee
│   └── keymap.cson
├── tmux
│   └── .tmux.conf
├── vim
│   └── .vimrc
└── zsh
    └── .zshrc
```

## Other specifications

### Terminal - zsh

```
brew install zsh
sudo vim /etc/shells # add in this file /usr/local/bin/zsh
chsh -s /usr/local/bin/zsh # change the terminal
```

extracted from [here](http://zanshin.net/2013/09/03/how-to-use-homebrew-zsh-instead-of-max-os-x-default/)

### Framework - oh-my-zsh

Github repo [here](https://github.com/robbyrussell/oh-my-zsh).

install with 

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
### Theme 

Edit the line in the `.zshrc`.

```
ZSH_THEME="agnoster"
```
Font: Meslo (both ascii and not ascii)

### Terminal

iTerm2 - solarized theme

### twm - tmux

### editors

* vim - `.vimrc` with plugin manager [Pathogen](https://github.com/tpope/vim-pathogen)
* atom - 


