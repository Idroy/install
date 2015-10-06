rm -rf /home/yordi/Downloads
rm -rf /home/yordi/Pictures
rm -rf /home/yordi/Music
rm -rf /home/yordi/Documents
rm -rf /home/yordi/Videos
ln -s /mnt/windows/Documents\ and\ Settings/yordi/Downloads $HOME/
ln -s /mnt/windows/Documents\ and\ Settings/yordi/Pictures $HOME/
ln -s /mnt/windows/Documents\ and\ Settings/yordi/Music $HOME/
ln -s /mnt/windows/Documents\ and\ Settings/yordi/Documents $HOME/
ln -s /mnt/windows/Documents\ and\ Settings/yordi/Videos $HOME/
echo "Done"
exit 0
