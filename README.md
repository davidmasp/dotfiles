# dotfiles
Repo to keep track of my dotfile configurations.

## Tree

```
$ tree -I ".git" -a

.
├── .DS_Store
├── .gitignore
├── LICENSE
├── README.md
├── atom
│   ├── config.cson
│   ├── init.coffee
│   └── keymap.cson
├── newpage
│   ├── .DS_Store
│   ├── newpage.css
│   ├── newpage.html
│   └── tilde
│       ├── README.md
│       └── index.html
├── tmux
│   ├── .tmux.conf
│   └── .tmux.conf.1.8
├── vim
│   └── .vimrc
└── zsh
    ├── .zshrc
    └── .zshrc.bak
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

### New Page for Firefox

* A modified version of [this great starting page](https://www.reddit.com/r/startpages/comments/5gpm2m/a_simple_start_page_using_the_gruvbox_color_scheme/)
