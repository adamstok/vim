sudo pacman -S xmobar git svn neovim base-devel nitrogen picom dmenu firefox gnome-terminal fzf ripgrep
cd $HOME/Documents/
git clone https://github.com/adamstok/vim
cd vim
sudo cp us /usr/share/X11/xkb/symbols/us
sudo setxkbmap dvorak
cd xmobar-xmonad
cp xmonad.hs ~/.xmonad/xmonad.hs
mkdir $HOME/.config/xmobar
cp xmobarrc $HOME/.config/xmobar/
cd $HOME/Documents
sudo git https://aur.archlinux.org/yay-git.git
chmod 777 -R yay-git
cd yay-git
makepkg -si
cd $HOME/Documents/vim/xmobar-xmonad
cp -r xpm $HOME/.xmonad/
mkdir $HOME/.config/nvim
cp $HOME/Documents/vim/init.vim $HOME/.config/nvim
cd $HOME/Documents/vim
mkdir $HOME/.dir_colors
cp dircolors $HOME/.dir_colors
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/bobthecow/git-flow-completion $HOME/.oh-my-zsh/custom/plugins/git-flow-completion
sudo pacman -S zsh-autosuggestions zsh-completions ranger
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $HOME/.oh-my-zsh/custom/plugins/zsh-z
source $HOME/.zshrc
echo "CHANGE PATHS IN XMONAD.HS AND XMOBARRC TO /HOME/USERNAME"
echo "change picom /etc/xdg/picom.conf  add -->"
echo "opacity-rule = ["
echo	"90:class_g = 'gnome-terminal' && focused",
echo	"60:class_g = 'gnome-terminal' && !focused"
echo "];"

echo "change the end of /etc/X11/xinit/xinitrc -->> 
xmonad &
nitrogen --restore &
picom &
exec"


cp $HOME/Documents/vim/xmobar-xmonad/backgrounds/arcolinux/** $HOME/Pictures/
dconf load /org/gnome/terminal/legacy/profiles:/ < $HOME/Documents/vim/gnome-terminal-profiles.dconf
nitrogen $HOME/Pictures/background.jpg
