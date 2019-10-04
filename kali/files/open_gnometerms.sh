#!/bin/bash

height=30
width=110
#zoom=.7
zoom=.75

gnome-terminal --geometry="${width}x${height}+0+0" --zoom=$zoom --hide-menubar --tab -e 'sh -c "systemctl start postgresql; msfconsole; exec bash"' --tab &
gnome-terminal --geometry="${width}x${height}+0-0" --zoom=${zoom} --hide-menubar --tab --tab &
gnome-terminal --geometry="${width}x${height}-0+0" --zoom=${zoom} --hide-menubar --tab --tab &
gnome-terminal --geometry="${width}x${height}-0-0" --zoom=${zoom} --hide-menubar --tab --tab &

