#!/bin/sh
cache_user() {
	dbus-send --system --type=method_call --print-reply --dest=org.freedesktop.Accounts /org/freedesktop/Accounts org.freedesktop.Accounts.CacheUser "string:$1"
}

cache_user doridian
cache_user wizzy

