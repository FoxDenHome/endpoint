#!/bin/sh

if /opt/endpoint/is-on-battery.sh; then
	echo 'Refusing backup on battery power!'
	exit 0
fi

/usr/bin/systemd-inhibit --no-ask-password --what='idle:sleep' --why='restic backup' --no-pager /opt/endpoint/restic.sh /opt/backup/run.sh / /efi
