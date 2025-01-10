#!/bin/sh

if /opt/endpoint/is-on-battery.sh; then
	echo 'Refusing backup on battery power!'
	exit 0
fi

/opt/endpoint/restic.sh /opt/backup/run.sh / /efi
