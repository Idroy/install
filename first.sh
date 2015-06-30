cp ~/install/.vimrc ~/.vimrc
if [ "$(id -u)" = "0" ]; then
		echo "/dev/sda2 /mnt/windows ntfs-3g defaults 0 0" >> /etc/fstab
		rm -rf /home/yordi/Downloads
		rm -rf /home/yordi/Pictures
		rm -rf /home/yordi/Music
		rm -rf /home/yordi/Documents
		rm -rf /home/yordi/Videos
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Downloads /home/yordi/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Pictures /home/yordi/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Music /home/yordi/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Documents /home/yordi/
		ln -s /mnt/windows/Documents\ and\ Settings/Yordi/Videos /home/yordi/
		echo "Done"          
		exit 0
else
		echo "You must be the superuser to run this script" >&2
		exit 1            					
fi
