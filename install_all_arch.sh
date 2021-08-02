# Set keyboard layout to dvorak
setxkbmap dvorak

# Install dependencies and apps
sudo pacman -S git
sudo pacman -S ctags
sudo pacman -S neovim
sudo pacman -S zsh
sudo pacman -S tmux
sudo pacman -S ranger
sudo pacman -S ripgrep
sudo pacman -S fzf
sudo pacman -S curl
sudo pacman -S wget
sudo pacman -S yarn
sudo pacman -S gnome-terminal
python3 -m pip install --upgrade pip
python3 pip install --upgrade pyvim
pip install jedi
pip install neovim
sudo pacman -S nodejs
sudo pacman -S npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install npm@latest

# Clone the repo
git clone https://github.com/adamstok/vim.git $HOME/Documents/vim
mkdir $HOME/.dir_colors
cp $HOME/Documents/vim/dircolors $HOME/.dir_colors/dircolors

# OH-MY-ZSH
sh -c "curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash"
mkdir -p $HOME/.oh-my-zsh/custom/plugins

### OH-MY-ZSH PLUGINS
# Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git-flow-completion
git clone https://github.com/bobthecow/git-flow-completion ~/.oh-my-zsh/custom/plugins/git-flow-completion
# zsh-completion
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-z
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Configure
rm $HOME/.zshrc 
cp $HOME/Documents/vim/.zshrc $HOME/.zshrc
source ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)
rm $HOME/.config/nvim
mkdir -p $HOME/.config/nvim
cp $HOME/Documents/vim/init.vim $HOME/.config/nvim/init.vim
vim -S $HOME/.config/nvim/init.vim
vim -c ":PlugInstall"
vim -c ":CocInstall coc-python"
vim -c ":CocInstall coc-tsserver"
vim -c ":CocInstall coc-json"
vim -c ":CocInstall coc-snippets"
vim -c ":PlugUpdate! markdown-preview.nvim"
vim -c ":call mkdp#util#install()"
cp $HOME/Documents/vim/.tmux.conf $HOME/.tmux.conf
tmux source-file $HOME/.tmux.conf

### INSTALL XMONAD AND XMOBAR
sudo pacman -S xmonad xmonad-contrib xterm dmenu nitrogen compton xmobar
mkdir $HOME/.xmonad
mkdir -p $HOME/.config/xmobar
cp -r $HOME/Documents/vim/xmobar-xmonad/xpm $HOME/.xmonad/xpm
cp $HOME/Documents/vim/xmobar-xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
cp $HOME/Documents/vim/xmobar-xmonad/xmobarrc $HOME/.config/xmobar/xmobarrc
cp $HOME/Documents/vim/wallpaper.jpg $HOME/Pictures/background.jpg
cp $HOME/Documents/vim/xmobar-xmonad/backgrounds/arcolinux/** $HOME/Pictures/
dconf load /org/gnome/terminal/legacy/profiles:/ < $HOME/Documents/vim/gnome-terminal-profiles.dconf
nitrogen $HOME/Pictures/background.jpg
