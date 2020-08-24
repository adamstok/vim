### Vim - Terminal - Tmux - Ubuntu Cheatsheet

---

1. Vim:

     * `F4` add ctags
     * `ctrl + ]` go to tag
     * `ctrl + w + ]` open tag in horizontal split
     * `:ls` list buffers
     * `:b name` open buffer name
     * `:edit .` (with the dot at the end ) open the folder tree 
     * `:e filename` open filename
     * `vs ` vertical split
     * `:tabedit` open a new tab , gt / 2gt / 3gt etc = switch btw tabs
     * `ctrl + w + =` resize windows to be equal 
     * `ctrl + w + < or >` resize windows when split vertically
     * `ctrl + w + - or +` resize windows when split horizontally
     * `leader + ` resize window
     * `PlugInstall` [install plugins](https://github.com/junegunn/vim-plug)
     * `ctrl + w + arrow` switch btw windows
     * `nj, nk` go n lines down, n lines up
     * `ga` show the hex and octal of the letter under cursor
     * `g8` show the hex of the letter under cursor
     * `/name or *(on the word we want to search) or gd ` search the word
     * `:%s/name1/name2/g` replace name1 with name2 globally
     * `shift + j` takes the line below and add it to the cursor line
     * `gJ` the same as shift + j but keeps the tabs and space
     * `< >in visual mode` indent lines
     * `viw` select the word under cursor in visual mode
     * `shift + u` uppercase the selected in visual mode word
     * `u` undo
     * `viw then g~` lowercase the selected word 
     * `gg / GG` got to the top / at the end of the file
     * `:noh` no highlight
     * `g??` encode / decode the word
     * `/\d\{12}` search 12 digits
     * `gv` if you highlighted a block and you want to re-highlight it again
     * `gi` go to the last insert
     * `di{` delete all btw {} - the cursor must be btw the {}
     * `da{` same as di{ but delete also the {} 
     * `ci{` delete all btw {} and enter in insert mode
     * `vi{` same as ci{ but enter in visual mode
     * `f( then ci(` search for ( then delete all btw ()!!! 
     * `leader + h/j/k/l` go to the window on the left / down / up / right
     * `leader + pv ` open a tree window on the left side
     * `leader + u ` open undo tree on the left side
     * `in visual block select and type :norm I + space ` go to insert mode and add a space
     * `p or leader p ` paste 
     *

---
2. Terminal:

     * `ctrl + pg up / pg down` switch btw tabs
     * `ctrl + shift + t ` open a new tab
---
3. Tmux:

     * `ctrl + b + c` create a new tab
     * `ctrl + b + number ` select the tab
     * `ctrl + [ (enter in copy mode) after ctrl + space (select what you want to copy) , then ctrl + w to copy, ctrl + w + ] (to paste)` copy + paste
     *

---
4. Ubuntu:

     * `shift + print screen` select an area + print screen








