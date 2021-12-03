set nocompatible

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" -----------------------------------------------------------------------------
" This config is targeted for Vim 8.0+ and expects you to have Plug installed.
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'


Plug 'neovim/nvim-lsp'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'folke/trouble.nvim'
" Plug 'neoclide/coc-lists'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'vuciv/vim-bujo'
Plug 'ap/vim-css-color' 
" Atom One Dark / Light theme.
Plug 'rakr/vim-one'
Plug 'chrisbra/csv.vim'
" Pass focus events from tmux to Vim (useful for autoread and linting tools).
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-eunuch'
Plug 'will133/vim-dirdiff'
Plug 'AndrewRadev/linediff.vim'
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'
Plug 'machakann/vim-highlightedyank'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'chr4/nginx.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-rails'
Plug 'vim-python/python-syntax'
Plug 'wgwoods/vim-systemd-syntax'
Plug 'frazrepo/vim-rainbow'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'vobornik/vim-mql4'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'mattn/emmet-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'mhinz/vim-grepper'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" -----------------------------------------------------------------------------
"  PHP
" -----------------------------------------------------------------------------
Plug 'StanAngeloff/php.vim'
" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'


" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'neomake/neomake'


call plug#end()
" -----------------------------------------------------------------------------
"  PHP
" -----------------------------------------------------------------------------
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)
" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

nmap <F8> :TagbarToggle<CR>

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

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <C-space> coc#refresh()

""GoTo code navigation
"nmap <silent> gd :<C-u>call CocAction('jumpDefinition','vsplit')<cr>
"nmap <silent> gr <Plug>(coc-references)
" nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

""show all diagnostics.
"nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
""manage extensions.
"nnoremap <silent> <space>e :<C-u>CocList extensions<cr>

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
" Vertical splits
" .............................................................................

map <Leader>vs :vs<CR>
map <Leader>vsr :vs<CR>:RangerWorkingDirectory<CR>

" .............................................................................
" FZF Plugin
" .............................................................................

nnoremap <silent> <Leader>b :vs<CR>:Buffers<CR>
nnoremap <silent> <C-f> :vs<CR>:Files<CR>
nnoremap <silent> <Leader>f :vs<CR>:Rg<CR>
nnoremap <silent> <Leader>/ :vs<CR>:BLines<CR>
nnoremap <silent> <Leader>' :vs<CR>:Marks<CR>
nnoremap <silent> <Leader>c :vs<CR>:Commits<CR>
nnoremap <silent> <Leader>H :vs<CR>:Helptags<CR>
nnoremap <silent> <Leader>hh :vs<CR>:History<CR>
nnoremap <silent> <Leader>h: :vs<CR>:History:<CR>
nnoremap <silent> <Leader>h/ :vs<CR>:History/<CR> 
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" .............................................................................
" Ctags
" " .............................................................................
" 
" Ctrl + ]  -> Go to definition
" Ctrl + T  -> Jump back from the definition
" Ctrl + W Ctrl + ]  -> Open definition in horizontal split
"
"
" split ctag definition in a new tab Ctrl + \
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> 
" split ctag definition in a vertical split Alt + ]
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" .............................................................................
" Move Windows
" " .............................................................................

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mv :call MarkWindowSwap()<CR>
nmap <silent> <leader>mm :call DoWindowSwap()<CR>
"
" .............................................................................
" Vim Bujo remaps
" " .............................................................................
nmap <C-S> <Plug>BujoAddnormal
imap <C-S> <Plug>BujoAddinsert

nmap <C-D> <Plug>BujoChecknormal
imap <C-D> <Plug>BujoCheckinsert

nnoremap <silent> <Leader>t :Todo<CR>

" .............................................................................
" Open url in vim
" " .............................................................................
nmap gx :silent execute "!firefox " . shellescape("<cWORD>") . " &"<CR>


" .............................................................................
" Vim Telescope
" " .............................................................................
" Find files using Telescope command-line sugar.
" nnoremap <leader>tf <cmd>Telescope find_files<cr>
" nnoremap <leader>tg <cmd>Telescope live_grep<cr>
" nnoremap <leader>tb <cmd>Telescope buffers<cr>
" nnoremap <leader>th <cmd>Telescope help_tags<cr>


lua << EOF
require'lspconfig'.pyright.setup{}
EOF


lua << EOF
require'lspconfig'.intelephense.setup{}
EOF

" lua << EOF
"   require("trouble").setup {
"     -- your configuration comes here
"     -- or leave it empty to use the default settings
"     -- refer to the configuration section below
"   }
" EOF

let g:the_primeagen_qf_l = 0
let g:the_primeagen_qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            let g:the_primeagen_qf_g = 0
            cclose
        else
            let g:the_primeagen_qf_g = 1
            copen
        end
    else
        if g:the_primeagen_qf_l == 1
            let g:the_primeagen_qf_l = 0
            lclose
        else
            let g:the_primeagen_qf_l = 1
            lopen
        end
    endif
endfun


fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            cclose
        else
            copen
        end
    else
        echo 'toggle locallist'
        if g:the_primeagen_qf_l == 1
            lclose
        else
            lopen
        end
    endif
endfun



lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.perlls.setup{}
EOF

"Quickfix lixt stuffff!!!!!!!
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <C-k> :cprev<CR>zz
nnoremap <C-j> :cnext<CR>zz

""Cicle througth tabs
"nnoremap <c-tab> :tabnext<CR>zz
"nnoremap <leader>tt :tabnew<CR>zz
"nnoremap <leader>tn :tabnext<CR>zz
"nnoremap <leader>tp :tabprev<CR>zz
"nnoremap <leader>tq :tabclose<CR>zz

"Quickly open a notes file
" nnoremap <leader>n :tab drop ~/notas.txt<CR>zz

" close local fixlist window
nnoremap <localleader>q :call ToggleQFList(0)<CR>zz
nnoremap <localleader>n :lnext<CR>zz
nnoremap <localleader>p :lprev<CR>zz

" As a default I want to run case insensitive searches
" nnoremap / /\c\v

augroup rafaelleru
    autocmd!
    " Populate locallist with lsp diagnostics automatically 
    autocmd User LspDiagnosticsChanged :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    " TODO: the nexts autocmd statements should not be necessary
    autocmd BufWrite *.py :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    autocmd BufWrite *.php :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    autocmd BufWrite *.go :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    autocmd BufWrite *.rs :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    autocmd BufWrite *.cpp,*.hpp,*.h,*.c :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
    autocmd BufWrite *.vim :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
augroup END



fun! SetQFControlVariable()
    if getwininfo(win_getid())[0]['loclist'] == 1
        let g:the_primeagen_qf_l = 1
    else
        let g:the_primeagen_qf_g = 1
    end
endfun

fun! UnsetQFControlVariable()
    if getwininfo(win_getid())[0]['loclist'] == 1
        let g:the_primeagen_qf_l = 0
    else
        let g:the_primeagen_qf_g = 0
    end
endfun

augroup locallist
    autocmd!
    " Populate locallist with lsp diagnostics automatically 
    autocmd User LspDiagnosticsChanged :lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
augroup END


augroup fixlist
    autocmd!
    autocmd BufWinEnter quickfix call SetQFControlVariable()
    autocmd BufWinLeave * call UnsetQFControlVariable()
augroup END




nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)


lua << EOF
vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
--_G.tab_complete = function()
--  if vim.fn.pumvisible() == 1 then
--    return t "<C-n>"
--  elseif vim.fn.call("vsnip#available", {1}) == 1 then
--    return t "<Plug>(vsnip-expand-or-jump)"
--  elseif check_back_space() then
--    return t "<Tab>"
--  else
--    return vim.fn['compe#complete']()
--  end
--end
--_G.s_tab_complete = function()
--  if vim.fn.pumvisible() == 1 then
--    return t "<C-p>"
--  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
--    return t "<Plug>(vsnip-jump-prev)"
--  else
--    -- If <S-Tab> is not working in your terminal, change it to <C-h>
--    return t "<S-Tab>"
--  end
--end

--vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF


" Fzf

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

lua << EOF
require'nvim-treesitter.configs'.setup {highlight = {enable = true}}
EOF
