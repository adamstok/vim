### Vim - Terminal - Tmux - Ubuntu Cheatsheet

---

1. Vim:

     * `F4 or ctags -R (in the terminal)` add ctags
     * `F8 ` show functions and variables in a splitted window
     * `ctrl + ]` go to tag
     * `ctrl + w + ]` open tag in horizontal split
     * `alt + ] ` open tag in a vertical split
     * `:ls` list buffers
     * `:ba / :on ` ba = show all buffers in the main view / :on = show only one buffer
     * `:b name` open buffer name
     * `:edit .` (with the dot at the end ) open the folder tree 
     * `:e filename` open filename
     * `vs ` vertical split
     * `:tabedit` open a new tab , gt or gT / 2gt / 3gt etc = switch btw tabs
     * `:tabr :tabn :tabl`   tabr = tabrewind (go to the first tab), tabn = next tab, tabl = last tab
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
     * `leader + r or leader + rc ` to replace the word , or select each word and decide to replace it or not (after a search)
     * `n or N` next / prev after a search
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
     * `gc ` comment lines
     * `di{` delete all btw {} - the cursor must be btw the {}
     * `da{` same as di{ but delete also the {} 
     * `ci{` delete all btw {} and enter in insert mode
     * `vi{` same as ci{ but enter in visual mode
     * `f( then ci(` search for ( then delete all btw ()!!! 
     * `leader + h/j/k/l` go to the window on the left / down / up / right
     * `leader + pv ` open a tree window on the left side
     * `i in tree window` show more info about files / folders
     * `leader + u ` open undo tree on the left side
     * `in visual block select and type :norm I + space ` go to insert mode and add a space
     * `p or leader p ` paste 
     * `:MarkdownPreview / MarkdownPreviewStop ` md preview in browser
     * `:LimeLight / :LimeLight!` make it gray
     * `leader + sp ` Spellcheck with cursor on the word
     * `leader + sv ` source vimrc
     * `leader + ev` edit vimrc
     * `f5 ` toggle Spellcheck
     * `:DirDiff dir1 dir2` difference btw dir1 & dir2
     * `:Delete` delete a buffer and the file on disk simultaneously
     * `:Move ` rename a buffer and the file on the disk
     * `:Rename ` like :move but relative to the current file
     * `:Linediff (in visual mode select the first block to compare, then :Linediff, select the second block to compare, then :Linediff) ` it shows the difference btw the selected blocks 
     * `[ + space or  ] + space ` add a new line above  / below the cursor line
     * `o ` in normal mode add a new line below 
     * `[ + e or  ] + e ` exchange the current line with the line above or below
     * `:G + git commands ` will do the git commands in vim (ex :G add .)
     * `:Goyo ` show only the text
     * `:TestFile or :TestLast or :TestNearest ` testing the testfiles
     * `:tabclose ` close the tab 
     * `dd ` delete the line
     * `v or V ` v=select from cursor point, V select all the line directly  
     * `:%s/.$//g` delete any character at the end of the line 
     * `b ` one word back 
     * `w ` one word forward 
     * `cw ` change the current word
     * `yy ` yank the current line 
     * `3yy ` yank the next 3 lines 
     * `yw ` yank the current word
     * `y$ ` yank to the end of the line
     * `p / P `  paste before cursor / paste after cursor
     * `a / A ` enter insert mode after the cursor / at the end of the line
     * `i / I ` enter insert mode right before the cursor / at the beginning of the line
     * `o / O ` enter insert mode on a blank line after the cursor / on a blank line before cursor
     * `:CocCommand python.setInterpreter ` select python interpreter for coc
     * `leader + prw ` coc search the word under cursor in all project files (nice to refactor a name everywhere )
     * `ctrl + backspace ` open vertical split  
     * `:read !ls -laR ` read the output of the command ls -laR  into vim
     * `in ranger type: zh ` show hidden files
     * `0 (zero)`  go at the beginning of the line
     * `q + letter / number ` record a macro, then press q to stop the recording, ex: qv
     * `@ + letter / number of the macro` use the macro, ex: @v
     * `:'<,>'norm! @ + letter / number ` run the macro on the selected (in visual mode) lines, ex: :'<,>'norm! @v
     * `. or @: ` repeat the last command in normal mode ( . ) / visual mode ( @: )
     * `:mksession! <file_name.vim>`  save the session
     * `:source <session_file.vim> or in the terminal: vim -S session_file.vim  `load the session (all the previously opened files)
     * `leader mv / leader mv ` move windows -> see the init.vim file
     * `in insert mode: ctrl + n or ctrl + P ` vim autocomplete
     * `:qa ` quit all open files - close all windows and exit
     * `ctrl + w + <number> + w ` go to the window number
     * `:lope :copen ` open errors 
     * `:reg ` see the registers
     * `"<register>yy ` yank to specific register
     * `"<register>p ` paste from specific register
     * `leader + t or :Todo ` open Todo list -> if it is opened in a git repo, it will by default open the local Todo list, for the global Todo list do: :Todo g
     * `ctrl + s ` add new todo element when Todo list is opened
     * `ctrl + q  `check todo element on Todo list

---
2. Terminal:

     * `ctrl + pg up / pg down` switch btw tabs
     * `ctrl + shift + t ` open a new tab
     * `ls -laR` show files even in subfolders
     * `in ranger type: zh ` show hidden files
---
3. Tmux:

     * `ctrl + b + c` create a new tab
     * `ctrl + b + number ` select the tab
     * `ctrl + b + [ (enter in copy mode) after ctrl + space (select what you want to copy) , then ctrl + w (or ctrl + m) to copy, ctrl + b + ] (to paste)` copy + paste
     * `ctrl + b + w ` show other windows
     * `ctrl + b + x ` kill the tab
     * `ctrl + b + : then kill-session ` kill the session
     * `ctrl + b + q ` show / choose window number
     * `ctrl + b + space ` toggle tiling 
     * `ctrl + b + :move-pane -t <session name>:<window number>`  move pane to other session
     * `ctrl + b + :new-session`  create a new session
     * `ctrl + b + : + -s + <name>` create a new session with some name
     * `ctrl + b + $ ` rename the session
---
4. Ubuntu:

     * `shift + print screen` select an area + print screen
     * `alt + tab + arrow  ` switch btw opened windows / apps
     * `alt + f4 ` close window
     * `super + h ` minimize the active window
     * `super + m ` toggle notification tray 
     * `ctrl + alt + arrow ` move btw workspaces
     * `sudo apt-cache search package_name`  search the package_name
     * `sudo apt-get purge package_name ` purge completely a package from the system
     * `ctrl + alt + arrow up/down ` go to the another workspace
     * `ctrl + alt + shift + arrow ` move the current window to another workspace
     * `nautilus path ` open folder location
     * `ctrl + f ` open fzf and then edit the selection in vim
---
5. Git:

    * In case of moving a git repo to another with all the commits and history:

    ```
    git clone --mirror url_of_old_repo

    cd name_of_old_repo

    git remote add new-origin url_of_new_repo

    git push new-origin --mirror
    ```

    *  `pip freeze > requirements.txt ` list the venv packages to requirements.txt file 
    *  `use custom ssh key with .ssh/config file. Host github.com, HostName github.com, IdentityFile ssh_key, IdentitiesOnly yes `  Use another key to clone , push, etc
    *  `eval 'ssh-agent -s' or eval $(ssh-agent)` instead of '' use backquote ;) in case if ssh-add don't want to work
    *  `ssh-add key `  when Permission denied (publickey)


---
6. Windows:

     * `alt + enter ` windows terminal enters full screen


---
7. Xmonad:

    * mod key is the windows key
    * `mod + shift + enter`  open terminal 
    * `mod + <number> `move to another workspace
    * `mod + space`  change tailing 
    * `mod + shift + <number>` move the app to another workspace
    * `mod + w, mod + e ` switch btw multiple monitors
