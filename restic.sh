#!/bin/sh

runx() {
    export REPO="$1"
    export CMD="$2"
    shift 2
    "$CMD" "$@"
}

host="$(hostname)"

#runx "s3:s3.us-west-001.backblazeb2.com/${host}-backups" "$@"
REST_SERVER_PASSWORD="$(cat /mnt/keydisk/rest-server-password | tr -d '\r\n\t ')"
runx "rest:https://${host}:${REST_SERVER_PASSWORD}@restic.foxden.network/${host}/main" "$@"
