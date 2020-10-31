##### CLEAN INSTALL

On a clean Linux distribution install:

* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Oh My Zsh and:](https://github.com/ohmyzsh/ohmyzsh)
  * `mkdir -p ~/.oh-my-zsh/custom/plugins `(the directory for the custom plugins)
  * `mkdir ~/.dir_colors && cp dircolors ~/.dir_colors`       
  * [Zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
  * [git-flow-completion](https://github.com/bobthecow/git-flow-completion)
  * [zsh-completion](https://github.com/zsh-users/zsh-completions)
  * [k](https://github.com/supercrabtree/k)
  * [zsh-syntax-hightighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
* [Tmux](https://github.com/tmux/tmux/wiki/Installing)
* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

---

##### Configure

* ZSH:

    `sudo apt install fonts-powerline`
* Tmux:
* Neovim:


sudo apt install fonts-powerline, then source ~/.zshrc , restart terminal 
change zsh to default 
$sudo chsh -s $(which zsh) $(whoami)
