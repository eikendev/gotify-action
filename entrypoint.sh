#!/usr/bin/env sh

curl "$INPUT_GOTIFY_API_BASE/message" \
	-H "X-Gotify-Key: $INPUT_GOTIFY_APP_TOKEN" \
	-F "title=$INPUT_NOTIFICATION_TITLE" \
	-F "message=$INPUT_NOTIFICATION_MESSAGE" \
	-F "priority=$INPUT_NOTIFICATION_PRIORITY"
