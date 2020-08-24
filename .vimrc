
" -----------------------------------------------------------------------------
" This config is targeted for Vim 8.0+ and expects you to have Plug installed.
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" Atom One Dark / Light theme.
Plug 'rakr/vim-one'

" Integrate fzf with Vim.
"Plug '~/.fzf'
"Plug 'junegunn/fzf.vim'

" Pass focus events from tmux to Vim (useful for autoread and linting tools).
Plug 'tmux-plugins/vim-tmux-focus-events'

" Helpers for moving and manipulating files / directories.
Plug 'tpope/vim-eunuch'

" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'

" Run a diff on 2 blocks of text.
Plug 'AndrewRadev/linediff.vim'

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Modify * to also work with visual selections.
Plug 'nelstrom/vim-visual-star-search'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Toggle comments in various ways.
Plug 'tpope/vim-commentary'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
Plug 'tpope/vim-sleuth'

" A number of useful motions for the quickfix list, pasting and more.
Plug 'tpope/vim-unimpaired'

" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'

" A git wrapper.
Plug 'tpope/vim-fugitive'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" Distraction free writing by removing UI elements and centering everything.
Plug 'junegunn/goyo.vim'

" A bunch of useful language related snippets (ultisnips is the engine).
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" Run test suites for various languages.
Plug 'janko/vim-test'

" Languages and file types.
Plug 'cakebaker/scss-syntax.vim'
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'jvirtanen/vim-hcl'
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-git'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-rails'
Plug 'vim-python/python-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'wgwoods/vim-systemd-syntax'

"-------------- My old Plugs -------------------
Plug 'frazrepo/vim-rainbow'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
"Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'basilgor/vim-autotags'
Plug 'mbbill/undotree'
Plug 'vobornik/vim-mql4'
"Plug 'Valloric/YouCompleteMe'



Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'


" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}




"----------------------------------



call plug#end()

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

" Enable syntax highlighting.
syntax on

" Set the color scheme.
colorscheme one
set background=dark

" -----------------------------------------------------------------------------
" Status line
" -----------------------------------------------------------------------------

" Heavily inspired by: https://github.com/junegunn/dotfiles/blob/master/vimrc
function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction

let &statusline = s:statusline_expr()

" -----------------------------------------------------------------------------
" Basic Settings
"   Research any of these by running :help <setting>
" -----------------------------------------------------------------------------
""----------------------- My old config -------------------


let g:vim_markdown_folding_disabled = 1

set backspace=indent,eol,start
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
"noremap <leader>y "*y<CR>
noremap XX "+x<CR>

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1





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
"autocmd vimenter * colorscheme gruvbox
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
set noswapfile
set undodir=~/.vim/undodir
set undofile
xnoremap p pgvy
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
"-----------------------
"Markdown Config
"--------------------------
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'




runtime! macros/matchit.vim

hi SpellBad cterm=underline ctermfg=9
hi SpellLocal cterm=underline ctermfg=9
hi SpellRare cterm=underline ctermfg=9
hi SpellCap cterm=underline




" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>




" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn


" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>



" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>

" Toggle spell check.
map <F5> :setlocal spell!<CR>


" Automatically fix the last misspelled word and jump back to where you were.
"   Taken from this talk: https://www.youtube.com/watch?v=lwD8G1P52Sk
nnoremap <leader>sp :normal! mz[s1z=`z<CR>


" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime




" .............................................................................
" mhinz/vim-grepper
" .............................................................................

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>



" .............................................................................
" junegunn/limelight.vim
" .............................................................................

let g:limelight_conceal_ctermfg=244


" .............................................................................
" SirVer/ultisnips
" .............................................................................

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" Format paragraph (selected or not) to 80 character lines.
nnoremap <Leader>g gqap
xnoremap <Leader>g gqa



" ----------------- BASIC CHEATSHEET -------------
"-----------------  Vundle Plugin manager: https://github.com/VundleVim/Vundle.vim
"------------------F4 (= add ctags)"
"------------------ctrl+] (= go to tag), ctrl+w+] (= open tag in horizontal split)
"------------------:ls (= list buffers)"
"------------------:b name (= open buffer name)"
"------------------:edit . (= don't forget the dot at the end , open the folder tree )
"------------------:e filename (= open filename)
"------------------:vs (= vsplit)
"------------------:tabedit (= open a new vim tab, gt 2gt,3gt etc switch btw the tabs)
"------------------:help ^n  :help i_^n  (= show doc for ctrl+n , show doc for ctrl+n in insert mode)
"-------------------control+w+= (= resize windows when splitted to be equal)
"-------------------control+w+< or > (resize when splitted vertically)
"-------------------control+w+(+/-) (resize when splitted horizontally)
"-------------------ctrl+pg up (switching btw tabs in the terminal)
"-------------------:PluginInstall (vundle install plugins)
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
"in tmux, ctrl+b+c (= create new tab)
"in tmux, ctrl+b+number (= select the tab)
"in tmux the tabs are enumerated below,... i think so :P
"in visual block select the lines, press : , type norm I + space (= it will
"add a space on selected lines)
"after yank, in normal mode press p, and it will paste how many times you want
"!
"
" tmux copy - paste :
" Enter ‘copy mode’ by pressing CTRL+b, [.
" Use the arrow keys to go to the position from where you want to start
" copying. Press CTRL+SPACE to start copying.
" Use arrow keys to go to the end of text you want to copy. Press ALT+w or
" CTRL+w to copy into Tmux buffer.
" Press CTRL+b, ] to paste in a possibly different Tmux pane/window.
" :noh (= no highlight after search)
" after search => n = next find, N = previous find
"tmux ctrl+b+w (= show previous windows)
"i (in tree so in pv shows the mod date, size etc of the files/folder)
"tmux ctrl+b+x (= kill the tab)
"tmux ctrl+b+: and kill-session (= kill session ! :D)
"tmux ctrl+b+q (= show and choose window number)
"tmux ctrl+b+c (= create new window)
"in vim gc (=  comment lines)
"in terminal ctrl+shift+t (= open new tab)
"in terminal ls -laR (=show files even in subfolders)
":MarkdownPreview
":MarkdownPreviewStop
":LimeLight (= make it gray)
":LimeLight!
"leader + sp (= SpellCheck)
"leader + sv (= source vimrc)
"leader + ev (= edit vimrc)
"f5 (= toggle SpellCheck)
":DirDiff dir1 dir2 (= diff btw dirs)
":Delete (= Delete a buffer and the file on the disk )
":Move: Rename a buffer and the file on disk simultaneously.
":Rename: Like :Move, but relative to the current file's containing directory.
":Linediff (= in visual mode select one block, then :Linediff , select second
"block - then Linediff -> it will show the diff btw selected blocks )
" * on selected word will serch the word in the text :w
" after searching the word with * , leader r to replace the word, or leader rc
" to select each word and decide to replace it or not
" after serch , go to next value with n or * 
" :Grepper (= search for a word in files and show/modify it)
" [space / ]space (= add new line before / after cursor line)
"[e / ]e (= exchange current line with one above or below)
":G + git command on a git repo file will do the git command 
":Goyo (= show only the text)
":TestFile (= test a testfile)
":TestLast / :TestNearest (= test testfile)
