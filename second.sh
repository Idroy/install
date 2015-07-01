 if [ "$(id -u)" = "0" ]; then
                apt-get update
		apt-get upgrade
		apt-get install vim clementine plank keepassx gdebi-core rar unrar ubuntu-restricted-extras git
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
