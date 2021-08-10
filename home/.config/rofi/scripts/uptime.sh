#!/bin/sh

exec notify-send -u low "$(awk '{print "Uptime: " int($1/3600)" Hours "int(($1%3600)/60)" minutes "int($1%60)" seconds"}' /proc/uptime)"