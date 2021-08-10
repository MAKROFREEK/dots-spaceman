#!/bin/sh

exec notify-send -u low "$(curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=$METRIC\&locCode\=76692 \ | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3 \1/p')"