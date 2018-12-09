#!/bin/sh

while `true`
do
  echo 0 > /sys/devices/platform/lf2000-fb.0/graphics/fb0/blank
  export SDL_NOMOUSE=1
  retroarch -v -c /configs/retroarch.cfg.leapstergs 2> /root/retro.log
  echo "Restarting program..."
done

