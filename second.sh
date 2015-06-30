 if [ "$(id -u)" = "0" ]; then
                apt-get update
		apt-get upgrade
		apt-get install vim clementine plank keepassx 
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i google-chrome*.deb
		 echo "Done"          
                 exit 0
 else
                 echo "You must be the superuser to run this script" >&2
                 exit 1                                                  
 fi
           
