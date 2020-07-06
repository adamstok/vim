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
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'basilgor/vim-autotags'
Plugin 'mbbill/undotree'
call vundle#end()            " required

" ----------------- VUNDLE END --------------------

" ----------------- BASIC CONFIG ------------------
set nocompatible              " be iMproved, required
set path+=**
filetype off                  " required
syntax on
set noerrorbells
set smartindent
set nowrap
set smartcase
set incsearch
let mapleader = " "

set background=dark
autocmd vimenter * colorscheme gruvbox
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
set number relativenumber
set nu rnu
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
let g:newtrw_winsize = 25


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>




" ----------------- BASIC CHEATSHEET -------------
" Vundle Plugin manager: https://github.com/VundleVim/Vundle.vim
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
":PluginInstall (vundle install plugins)
"shit+print screen (= ubuntu, select an area an do a print screen of it)
"ctrl+w+arrow (= switch btw windows when splitted)
"j (= cursor goes one line down)
"k (= cursor goes one line up)
"ga (= show the hex and octal of the letter under cursor )
"g8 (= show the hex only)
"g< (= show the last output)
"/name (= search name , without replacement)
":%s/name1/replace_name/g (= replace name1 with replace_name globally)
":%s/name1/replace_name then g& (= replace name1 with replace_name + g& -
"globally)
"shift+j (= takes the line below and add it to the cursor line)
"gJ (= shift+j but keeps the tabs and space)
"in visual block (ctrl+v) select the block and press < or > to indent the
"block
"viw (= select the word under cursor)
"shift+u (= uppercase the selected word)
"u (= undo)
"viw then g~ (= lowercase the selected word)
"gd (= jump to defenition)
"* (= go on top of the file)
"gg (= go on top)
"GG (= go at the end of the file)
"8j or 8k (= goes 7 lines down, up)
"g?? (= encode, decode the line )
"/\d\{12} (= search 12 digits)
"gv (= if you highlighted a block and want to re-highlight it again)
"gi (= goes to the last insert)
"di{ (= delete all btw {} )
"da{ (= delete all in and  with the {} )
"ci{ (= delete all btw {} and enter the insert mode)
"vi{ (= select all btw {} and enter visual mode)
"f( then ci( (= on the line find (, then delete all in the () and enter in
"insert mode ) !!
"ci' (= delete all in the nearest '' and enter in insert mode)
"terminal ubuntu ctrl+shit+t (= open new tab in terminal)
"leader = space ,so ....
"space + h/j/k/l (= go to next window, when splitted)
"space+h or space+l (= when splitted windows, go to the left/right window)
"space+pv (= open a tree window)
"space+u  (= go to undotree on the left)
"
