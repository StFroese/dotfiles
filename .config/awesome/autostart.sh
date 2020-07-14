#!/usr/bin/env bash
function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

run chromium
run picom
run cbatticon
run spotify
