#!/bin/sh

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki export PATH

# this will run as a munki install_check script
# exit status of 0 means install needs to run
# exit status not 0 means no installation necessary

# adapted scripts from  here: https://jamfnation.jamfsoftware.com/discussion.html?id=1989

# we need to check wether SEP is running

seprunning=$(ps ax | grep -c -i "SymDaemon")

if [[ $seprunning -eq 1 ]]; then
	echo "SEP is not running"
	exit 1
fi

echo "SEP is running"

exit 0
