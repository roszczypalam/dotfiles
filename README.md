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


### FZF with nerdtree 
now fzfz will ignore nerdtree buffer and will never open file in it 

```
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
```





### JediVim keybindings


    Completion <C-Space>
    Goto assignments <leader>g (typical goto function)
    Goto definitions <leader>d (follow identifier as far as possible, includes imports and statements)
    Show Documentation/Pydoc K (shows a popup with assignments)
    Renaming <leader>r
    Usages <leader>n (shows all the usages of a name)
    Open module, e.g. :Pyimport os (opens the os module)

### TODO

coping from other tmux window -> xclip or vim mode in terminal (ex. i want to get path using pwd and paste it to another window)







