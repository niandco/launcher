#!/bin/bash

read -p "Enter a command (start|stop): " command

if [ $command = "start" ]
then
	brew services start mariadb
	sudo apachectl start
	echo "Services started correctly"
elif [ $command = "stop" ]
	then
	brew services stop mariadb
	sudo apachectl stop
	echo "Services stopped correctly"
else
	echo "Command not found"
fi

exit