# roszczypalam dotfiles

This is my configuration for professional and hobby Python development. Enjoy !

## Features

### Apps shortcuts

Typical alt-tab annoys me a lot so I found a ways to make my own shortcuts for development apps (Browser, IDE, Terminal).

At first install packages:

```
sudo apt-get install xbindkeys && sudo apt-get install wmctrl
```

Make your own `.xbindkeyssrc` file:

```
xbindkeys -d > ~/.xbindkeysrc
```

Example shortcut:

```
"bash ~/dotfiles/open_terminal.sh gnome-terminal-server"
  control + 9
```

It uses `open_terminal.sh` script which is included in dotfiles directory


### Shared clipboard

There is added in vimrc:
```
set clipboard=unnamedplus
```
which makes clipboard shared between vim and system clipboard

When it's not working on your machine check if your vim version supports shared clipboard:

```
vim --version | grep clipboard
```

if the output have -clipboard or -xterm_clipboard

Please install following packages (via apt-get)


`vim-gtk` or `vim-gnome`

