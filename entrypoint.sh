#!/bin/sh

profile_path="/root/.mozilla/firefox/default/"

if [ "$(id -u)" != "0" ]; then
	profile_path="/home/user/.mozilla/firefox/default/"
fi

exec /usr/bin/firefox --no-remote --profile "${profile_path}" --kiosk "$@"
