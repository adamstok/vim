set nocompatible              " be iMproved, required
set path+=**
filetype off                  " required

" ----------------- VUNDLE PLUGIN MANAGER ----------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'basilgor/vim-autotags'
call vundle#end()            " required

" ----------------- VUNDLE END --------------------

" ----------------- BASIC CONFIG ------------------
set background=dark
autocmd vimenter * colorscheme gruvbox
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
set autoindent
set wildmenu
set confirm
set hlsearch
set ignorecase
set smartcase
set linebreak
syntax enable
set laststatus=2
set ruler
set number
set mouse=a
set spell
set spelllang +=fr
set spelllang +=en
syntax enable
filetype plugin on
filetype plugin indent on    " required

let g:newtrw_banner=0
let g:newtrw_browse_split=4
let g:newtrw_altv=1
let g:newtrw_liststyle=3


" ----------------- BASIC CHEATSHEET -------------
"F4 (= add ctags)"
"ctrl+] (= go to tag), ctrl+w+] (= open tag in horizontal split)
":ls (= list buffers)"
":b name (= open buffer name)"
":edit . (= don't forget the dot at the end , open the folder tree )
":e filename (= open filename)
":vs (= vsplit)
":tabedit (= open a new vim tab, gt 2gt,3gt etc switch btw the tabs) 
":help ^n  :help i_^n  (= show doc for ctrl+n , show doc for ctrl+n in insert mode)
"control+w+= (= resize windows when splitted to be equal)
"control+w+< or > (resize when splitted vertically)
"control+w+(+/-) (resize when splitted horizontally)
"ctrl+pg up (switching btw tabs in the terminal)
":PluginInstall (vundle install plugigs)
"


