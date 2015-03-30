#!/bin/bash

. $HOME/git/base16-shell/base16-flat.dark.sh
i3-msg floating enable
i3-msg resize shrink width 400 px or 400 ppt
RES=$(xrandr | grep -o -E -e "current [0-9]+ x [0-9]+")
H_=$(echo $RES | cut -d ' ' -f 4)
W_=$(echo $RES | cut -d ' ' -f 2)
let H=$H_-345
let W=$W_-95

i3-msg move window to position $W $H

alsamixer

unset RES
