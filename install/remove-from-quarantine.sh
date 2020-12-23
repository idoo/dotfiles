#!/usr/bin/env bash

# dotfiles_echo "-> Removing apps from quarantine..."

all_apps="$(ls -l@ /Applications)"
quarantined_apps=$(
	python3 - "${all_apps}" <<-EOF
		import sys
		import re
		apps = sys.argv[1]
		apps = apps.split("drw")
		appsToApprove = []
		for app in apps:
		    if re.search('com.apple.quarantine', app):
		        app = app.split('\n')[0]
		        app = re.split(r'(\s+)', app)
		        app = ''.join(app[16:])
		        appsToApprove.append(app)
		print('\n'.join(appsToApprove))
	EOF
)

if [[ -n "${quarantined_apps}" ]]; then
	while IFS=$'\n' read -r app; do
		sudo /usr/bin/xattr -r -d "com.apple.quarantine" "/Applications/${app}" &>/dev/null
	done <<<"${quarantined_apps}"
fi
