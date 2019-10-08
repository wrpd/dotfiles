#! /bin/sh

# kill existing processes
killall -q polybar

# wait for processes
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bars
polybar wrpd >>/tmp/polybar-wrpd.log 2>&1 &
polybar wrpd-l >>/tmp/polybar-wrpd-l.log 2>&1 &
polybar wrpd-r >>/tmp/polybar-wrpd-r.log 2>&1 &

echo "polybar initiated"
