git clone https://github.com/numixproject/numix-icon-theme-circle
git clone https://github.com/numixproject/numix-icon-theme
git clone https://github.com/numixproject/numix-folders
cp -r /home/yordi/numix-icon-theme-circle/Numix-Circle /home/yordi/.icons/Numix-Circle
cp -r /home/yordi/numix-icon-theme-circle/Numix-Circle-Light /home/yordi/.icons/Numix-Circle-Light
cp -r /home/yordi/numix-icon-theme/Numix /home/yordi/.icons/Numix
cp -r /home/yordi/numix-icon-theme/Numix-Light /home/yordi/.icons/Numix-Light
cp -r /home/yordi/install/plank /home/yordi/.config/plank
mkdir /home/yordi/.vim
mkdir /home/yordi/.vim/undodir
cp /home/yordi/install/.vimrc /home/yordi/.vimrc
cp -r /home/yordi/install/Numix /home/yordi/.local/share/plank/themes/Numix
echo "Done"
exit 0
