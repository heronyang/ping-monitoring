#!/bin/bash
cat PING_api_plate_tw*.log | awk -F '[ /]' '/round-trip/{ print $8 }' | gnuplot -persist -e "set terminal dumb 121 28; set yrange[0:200]; plot '-' with impulses title 'Ping (ms)';"
