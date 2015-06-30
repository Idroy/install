 if [ "$(id -u)" = "0" ]; then
                apt-get update
		apt-get upgrade
		apt-get install vim clementine plank keepassx gdebi-core rar unrar ubuntu-restricted-extras
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		dpkg -i google-chrome*.deb
		wget http://media.steampowered.com/client/installer/steam.deb
		gdebi steam.deb
		 echo "Done"          
                 exit 0
 else
                 echo "You must be the superuser to run this script" >&2
                 exit 1                                                  
 fi
           
