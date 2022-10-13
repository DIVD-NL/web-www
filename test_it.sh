#!/bin/bash

docker pull mrseccubus/github-pages:latest
docker run --volume="$PWD:/root/project:delegated" --entrypoint /bin/bash -ti mrseccubus/github-pages \
-c "
	set -e
	cd /root/project/;
	apt update -y
	apt install python3-pip libcurl4 -y
	pip3 install html5validator 
	gem install html-proofer
	bundle install
	git config --global --add safe.directory /root/project/csirt.divd.nl
	./update.sh;
	rm -rf _site/*;
	bundle exec jekyll build  --future 2>&1 |grep -Ev 'rb:[0-9]+: warning';
	./proof_html.sh
"
