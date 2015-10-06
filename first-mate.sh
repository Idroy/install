if [ "$(id -u)" = "0" ]; then
		echo "/dev/sda2 /mnt/windows ntfs-3g defaults 0 0" >> /etc/fstab
		rm -rf $HOME/Downloads
		rm -rf $HOME/Pictures
		rm -rf $HOME/Music
		rm -rf $HOME/Documents
		rm -rf $HOME/Videos
		ln -s /mnt/windows/Documents\ and\ Settings/yordi/Downloads $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/yordi/Pictures $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/yordi/Music $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/yordi/Documents $HOME/
		ln -s /mnt/windows/Documents\ and\ Settings/yordi/Videos $HOME/
		apt-get update
		apt-get upgrade
		apt-get install vim clementine plank keepassx gdebi-core rar unrar ubuntu-restricted-extras
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb http://media.steampowered.com/client/installer/steam.deb
		dpkg -i google-chrome*.deb
		gdebi steam.deb
		cp /home/yordi/install/caja.desktop /usr/share/applications/caja.desktop
       		cp /home/yordi/install/mate-terminal.desktop /usr/share/applications/mate-terminal.desktop
        	cp /home/yordi/install/google-chrome.desktop /usr/share/applications/google-chrome.desktop       
		apt-get -f install		
		echo "Done"          
		exit 0
else
		echo "You must be the superuser to run this script" >&2
		exit 1            					
fi
