#!/bin/sh
set -x

execone() {
	h="$1"
	shift 1
	ssh -t "$h" "$@"
}

execone islandfox.foxden.network "$@"
execone bengalfox.foxden.network "$@"
execone icefox.doridian.net "$@"

execone fennec.foxden.network "$@"
execone capefox.foxden.network "$@"

