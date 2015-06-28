if [ "$(id -u)" = "0" ]; then
	cp /home/yordi/install/caja.desktop /usr/share/applications/caja.desktop
	cp /home/yordi/install/mate-terminal.desktop /usr/share/applications/mate-terminal.desktop
        echo "Done"          
                exit 0
else
        echo "You must be the superuser to run this script" >&2
                exit 1
fi

