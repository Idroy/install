git clone https://github.com/numixproject/numix-icon-theme-circle
git clone https://github.com/numixproject/numix-icon-theme
git clone https://github.com/numixproject/numix-folders
cp -r $HOME/numix-icon-theme-circle/Numix-Circle $HOME/.icons/Numix-Circle
cp -r $HOME/numix-icon-theme-circle/Numix-Circle-Light $HOME/.icons/Numix-Circle-Light
cp -r $HOME/numix-icon-theme/Numix $HOME/.icons/Numix
cp -r $HOME/numix-icon-theme/Numix-Light $HOME/.icons/Numix-Light
cp -r $HOME/install/plank $HOME/.config/plank
mkdir $HOME/.vim
mkdir $HOME/.vim/undodir
cp $HOME/install/.vimrc $HOME/.vimrc
cp -r $HOME/install/Numix $HOME/.local/share/plank/themes/Numix
echo "Done"
exit 0
