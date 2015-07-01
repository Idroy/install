if [ "$(id -u)" = "0" ]; then
		echo "/dev/sda2 /mnt/windows ntfs-3g defaults 0 0" >> /etc/fstab
		rm -rf $HOME/Downloads
		rm -rf $HOME/Pictures
		rm -rf $HOME/Music
		rm -rf $HOME/Documents
		rm -rf $HOME/Videos
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Downloads $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Pictures $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Music $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Documents $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Videos $HOME/
		apt-get update
		apt-get upgrade
		apt-get install vim clementine plank keepassx gdebi-core rar unrar ubuntu-restricted-extras git
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb http://media.steampowered.com/client/installer/steam.deb
		dpkg -i google-chrome*.deb
		gdebi steam.deb
		cp $HOME/install/caja.desktop /usr/share/applications/caja.desktop
       		cp $HOME/install/mate-terminal.desktop /usr/share/applications/mate-terminal.desktop
        	cp $HOME/install/google-chrome.desktop /usr/share/applications/google-chrome.desktop       
		apt-get -f install		
		echo "Done"          
		exit 0
else
		echo "You must be the superuser to run this script" >&2
		exit 1            					
fi
