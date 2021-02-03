#!/bin/sh

count=`ps aux | grep -c thunderbird`

if [ $count -eq 1 ]; then
    thunderbird-beta
else
    i3-msg "[class=Thunderbird] focus"
fi
