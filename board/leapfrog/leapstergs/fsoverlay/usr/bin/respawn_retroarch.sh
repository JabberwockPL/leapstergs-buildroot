#!/bin/sh

CONFIG=/configs/retroarch.cfg.leapstergs

valencia=$(dmesg | grep valencia)
if [[ $? == 0 ]]; then
    CONFIG=/configs/retroarch.cfg.leappad2
fi

while `true`
do
  echo 0 > /sys/devices/platform/lf2000-fb.0/graphics/fb0/blank
  export SDL_NOMOUSE=1
  retroarch -v -c $CONFIG 2> /root/retro.log
  echo "Restarting program..."
done

