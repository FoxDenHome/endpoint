#!/bin/sh

if /opt/endpoint/is-on-battery.sh; then
	echo 'Refusing backup on battery power!'
	exit 0
fi

if [ -f /opt/endpoint/local.sh ]; then
	. /opt/endpoint/local.sh
fi

/usr/bin/systemd-inhibit --no-ask-password --what='idle:sleep' --why='restic backup' --no-pager /opt/endpoint/restic.sh /opt/backup/run.sh / /efi
_exit=$?
if [ $_exit -eq 3 ]; then
	_exit=0
fi
exit $_exit
