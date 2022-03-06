#!/bin/bash

result=$(ps ax|grep -v grep|grep trayer)
if [ "$result" == "" ]; then
	eval "trayer --transparent true --edge top --expand false --align right --height 22 --width 10 --SetDockType false --tint 0x88888888 &"
else
	eval "killall trayer"
fi
