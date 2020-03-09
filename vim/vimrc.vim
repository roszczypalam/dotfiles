filetype off
let mapleader = ";"
set expandtab

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive' " plugin on GitHub repo
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'scrooloose/nerdcommenter' " file drawer, open with :NERDTreeToggle
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'valloric/matchtagalways'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-python/python-syntax'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mattn/emmet-vim'
Plugin 'arzg/vim-colors-xcode'


call vundle#end()

set background=dark
syntax on
autocmd InsertEnter,InsertLeave * set cul!

hi Normal guibg=NONE ctermbg=NONE

filetype plugin indent on    " required

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" " show hidden files in NERDTree
let NERDTreeShowHidden=1
" " Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" " expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr
"Don't show swp files
let NERDTreeIgnore = ['\.swp$', '\.pyc$']
let NERDTreeMapOpenInTab='c'

"Windows switch
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Python PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set autoindent |
    \ set fileformat=unix |
    \ set expandtab

"Html indent
au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2 autoindent expandtab

au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent |
    \ set fileformat=unix |
    \ set expandtab



if (has("termguicolors"))
  set termguicolors
endif

highlight NonText ctermfg=7
hi StatusLine                  ctermfg=8     ctermbg=2     cterm=NONE
hi StatusLineNC                ctermfg=2     ctermbg=8     cterm=NONE
set shortmess+=A
set updatetime=250
au VimEnter * highlight clear SignColumn
highlight clear LineNr
set number
" toggle invisible characters
 set list
 set listchars=tab:▸\ 
 set showbreak=↪
set pastetoggle=<F2>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ }

set clipboard=unnamedplus 

"Syntastic
let g:syntastic_quiet_messages = { 'regex': 'E501' }

"FZF shortcuts
let g:jedi#use_splits_not_buffers = "bottom"

nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
nnoremap <silent> <expr> <c-t> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Ag\<cr>"

"Dont make stupid swap files
set noswapfile

xnoremap p pgvy

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <F8> :SyntasticCheck<cr>

"moving current buffer to new tab (with closing it)
nnoremap <leader>t <C-w>T

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
hi SpellBad term=reverse ctermbg=darkgreen

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

let g:python_highlight_all = 1
nnoremap <leader>% :MtaJumpToOtherTag<cr>

"show full path always
set statusline+=%F

colorscheme xcodedarkhc
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
