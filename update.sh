#!/bin/bash

if [[ ! -e serve ]]; then
	echo "It looks like you are not in the root directory because I don;t see the serve script"
	echo "I'm cowardly quitting"
	exit 1
fi
if [[ ! -d csirt.divd.nl ]]; then
	git clone https://github.com/DIVD-NL/web-csirt.git csirt.divd.nl
else
	( cd csirt.divd.nl ; git pull )
fi

echo "Updating cases"
(
	cd _cases
	rm -rf *
	cp -r ../csirt.divd.nl/_cases/* .
)
echo "Updating csirt posts"
(
	cd _csirt_posts
	rm -rf *
	cp -r ../csirt.divd.nl/_posts/* .
)
echo "Updating cves"
(
	cd _cves
	rm -f *.md
	cp ../csirt.divd.nl/_cves/*.md .
)
echo "Updating data"
(
	cd _data
	rm -f scanners.yml
	cp ../csirt.divd.nl/_data/scanners.yml .
)
echo "Updating plugins" 
(
	cd _plugins
	rm casesPlugin.rb cve_json.rb
	cp ../csirt.divd.nl/_plugins/*.rb .
)
echo "Updating teams and people"
if /usr/bin/env python3 -c "import json
import requests
import argparse" ; then 
	(
		cd _teams
		rm -rf *.md
		cd ../_people
		rm -rf *.md
	)
	./org_update.py --member-path _people --team-path _teams
else
	echo "Not updated, python packages are missing"
fi