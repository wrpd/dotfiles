#                        __      
#         __          __/\ \__   
#   __  _/\_\    ___ /\_\ \ ,_\  
#  /\ \/'\/\ \ /' _ `\/\ \ \ \/  
#  \/>  </\ \ \/\ \/\ \ \ \ \ \_ 
#   /\_/\_\\ \_\ \_\ \_\ \_\ \__\
#   \//\/_/ \/_/\/_/\/_/\/_/\/__/
#                                

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb ~/.Xresources &

exec bspwm
