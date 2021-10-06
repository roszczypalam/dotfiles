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
"Plugin 'chriskempson/base16-vim'
"Plugin 'dracula/vim'
"Plugin 'morhetz/gruvbox'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'drewtempelmeyer/palenight.vim'
"Plugin 'itchyny/lightline.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'Chiel92/vim-autoformat'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'vim-python/python-syntax'
"Plugin 'arcticicestudio/nord-vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'arzg/vim-colors-xcode'
"Plugin 'sakshamgupta05/vim-todo-highlight'
Plugin 'numirias/semshi'
"Plugin 'Yggdroot/indentLine'
"Plugin 'shime/vim-livedown'
Plugin 'dense-analysis/ale'
Plugin 'gcmt/taboo.vim'
Plugin 'bagrat/vim-buffet'
Plugin 'prettier/vim-prettier', {'do': 'yarn install'}
Plugin 'puremourning/vimspector'
Plugin 'leafgarland/typescript-vim'
Plugin 'ycm-core/YouCompleteMe'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


"Plugin 'honza/vim-snippets'

"Plugin 'ryanoasis/vim-devicons'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'yuttie/comfortable-motion.vim'


call vundle#end()

set background=dark
syntax on
autocmd InsertEnter,InsertLeave * set cul!

hi Normal guibg=NONE ctermbg=NONE

filetype plugin indent on    " required

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
 " show hidden files in NERDTree
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


au BufNewFile,BufRead *.tsx
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent |
    \ set fileformat=unix |
    \ set expandtab

au BufNewFile,BufRead *.ts
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
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ }

set clipboard=unnamedplus 

"Syntastic
"let g:syntastic_quiet_messages = { 'regex': 'E501' }

"FZF shortcuts
let g:jedi#use_splits_not_buffers = "left"

nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
nnoremap <silent> <expr> <c-t> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Ag \<cr>"

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
nnoremap <leader>q :SyntasticCheck<cr>

"moving current buffer to new tab (with closing it)
nnoremap <leader>t <C-w>T

"syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
hi SpellBad term=reverse ctermbg=darkgreen

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"let g:python_highlight_all = 1
nnoremap <leader>% :MtaJumpToOtherTag<cr>

"show full path always
set statusline+=%F

execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType ts setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType tsx setlocal ts=2 sts=2 sw=2 expandtab

" Update Git signs every time the text is changed
autocmd User SignifySetup
            \ execute 'autocmd! signify' |
            \ autocmd signify TextChanged,TextChangedI * call sy#start()


augroup vim-colors-xcode
    autocmd!
augroup END


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python', 'flake8', 'pep8', 'pyflakes', 'pylint']
let g:black_skip_string_normalization = 1


" Black macchiato with single quotes
function! s:RunBlackMacchiato() range
    let cmd = "black-macchiato"
    if !executable(cmd)
        echohl ErrorMsg
        echom "black-macchiato not found!"
        echohl None
        return
    endif

    silent execute a:firstline . "," . a:lastline . "!" . cmd . ' --skip-string-normalization'

    echo "Done formatting."

endfunction

" Create a command to call the black-macchiato function
command -range BlackMacchiato <line1>,<line2>call <sid>RunBlackMacchiato()

" Optionally add keyboard shortcuts to call the command in normal and visual modes
autocmd FileType python xnoremap <buffer> <leader>f :'<,'>BlackMacchiato<cr>
autocmd FileType javascript xnoremap <buffer> <leader>f :'<,'>:PrettierPartial<cr>
autocmd BufNewFile,BufRead *.tsx xnoremap <buffer> <leader>f :'<,'>:PrettierPartial<cr>
autocmd BufNewFile,BufRead *.ts xnoremap <buffer> <leader>f :'<,'>:PrettierPartial<cr>

let g:prettier#config#tab_width = '4'

set colorcolumn=89

set cursorline

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

let g:xcodedarkhc_green_comments = 1

"colorscheme xcodedarkhc
"colorscheme onedark
colorscheme palenight

nnoremap <Leader>vr :source $MYVIMRC<CR>
set lazyredraw


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
let g:ale_fix_on_save = 1
"let g:ale_python_isort_use_global = 1

"let g:ale_fixers = ['isort']

nnoremap <leader>v :vsp %<cr>
let g:NERDTreeWinPos = "right"

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:prettier#config#tab_width = 'auto'



com! -bar -bang Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter=: --nth=4..'}, 'right'), <bang>0)
let g:vimspector_enable_mappings = 'HUMAN'
let g:coc_global_extensions = [ 'coc-tsserver' ]


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
