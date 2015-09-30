if [ "$(id -u)" = "0" ]; then
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
		echo "Done"          
		exit 0
else
		echo "You must be the superuser to run this script" >&2
		exit 1            					
fi
