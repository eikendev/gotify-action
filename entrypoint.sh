#!/usr/bin/env sh

if [ $# -ne 5 ]; then
	printf "%s\n" "Usage: $0 <gotify_api_base> <gotify_app_token> <notification_title> <notification_message> <notification_priority>" >&2
	exit 1
fi

gotify_api_base="$1"
gotify_app_token="$2"
notification_title="$3"
notification_message="$4"
notification_priority="$5"

curl "$gotify_api_base/message?token=$gotify_app_token" \
	-F "title=$notification_title" \
	-F "message=$notification_message" \
	-F "priority=$notification_priority"
