##### CLEAN INSTALL

On a clean Linux distribution install:

* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Oh My Zsh and:](https://github.com/ohmyzsh/ohmyzsh)
  * `mkdir -p ~/.oh-my-zsh/custom/plugins `(the directory for the custom plugins)
  * `mkdir ~/.dir_colors && cp dircolors ~/.dir_colors` -> [dircolors](https://github.com/adamstok/vim/blob/master/dircolors)
  * [Zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
  * [git-flow-completion](https://github.com/bobthecow/git-flow-completion)
  * [zsh-completion](https://github.com/zsh-users/zsh-completions)
  * [k](https://github.com/supercrabtree/k)
  * [zsh-syntax-hightighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
  * [ZSH-z](https://github.com/agkozak/zsh-z)
  * [fzf](https://github.com/junegunn/fzf#installation)
  * ranger  -> sudo apt install ranger
* [Tmux](https://github.com/tmux/tmux/wiki/Installing)
* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

---

##### Configure

* ZSH:

    replace ~/.zshrc with [.zshrc](https://raw.githubusercontent.com/adamstok/vim/master/.zshrc)

    in the .zshrc file change /username/ to your account name

    `$sudo chsh -s $(which zsh) $(whoami)` -> make zsh the default shell

    `sudo apt install fonts-powerline` 

    `source ~/.zshrc` then restart the terminal

* Tmux:

    copy [.tmux.conf](https://github.com/adamstok/vim/blob/master/.tmux.conf) to your home directory and in a tmux session just make:

    `:source-file ~/.tmux.conf`

* Neovim:

    If there is no ~/.config/nvim directory create one:
    `mkdir -p ~/.config/nvim`

    Copy [init.vim](https://github.com/adamstok/vim/blob/master/init.vim) to your ~/.config/nvim directory

    In the terminal: `sudo apt install yarn`

    Install [vim-plug](https://github.com/junegunn/vim-plug)

    `:source ~/.config/nvim/init.vim`

    `:PlugInstall`

    `:CocInstall coc-python`

    `:CocInstall coc-tsserver`

    If there is a problem with the installation of markdown-preview, do:
    `:PlugUpdate! markdown-preview.nvim`

