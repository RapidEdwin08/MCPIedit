#!/bin/bash
# https://github.com/RapidEdwin08/

#	Button 3: key 135	#	Button 4: key 26	#	Button 7: key 9
qjoyLAYOUT="Minecraft"
qjoyLYT=$(
echo '# QJoyPad 4.3 Layout File

Joystick 1 {
	Axis 3: dZone 25309, xZone 3163, +mouse 3, -key 0
	Axis 4: gradient, maxSpeed 3, tCurve 0, mouse+h
	Axis 5: gradient, maxSpeed 3, tCurve 0, mouse+v
	Axis 6: dZone 25309, xZone 3163, +mouse 1, -key 0
	Button 7: key 9
	Button 9: key 95
	Button 11: mouse 1
}
')

# Create QJoyPad.lyt if needed
if [ ! -f "$HOME/.qjoypad3/$qjoyLAYOUT.lyt" ]; then echo "$qjoyLYT" > "$HOME/.qjoypad3/$qjoyLAYOUT.lyt"; fi

# Run qjoypad
pkill -15 qjoypad > /dev/null 2>&1
rm /tmp/qjoypad.pid > /dev/null 2>&1
echo "qjoypad "$qjoyLAYOUT" &" >> /dev/shm/runcommand.info
qjoypad "$qjoyLAYOUT" &

if [[ ! -d $HOME/.minecraft-pi ]]; then mkdir -p $HOME/.minecraft-pi; fi
pushd $HOME/.minecraft-pi

# Run mcpiedit in isolated virtual environment
source envmcpiedit/bin/activate
$HOME/.mcpiedit/mcpiedit
deactivate

popd

# Kill qjoypad
pkill -15 qjoypad > /dev/null 2>&1; rm /tmp/qjoypad.pid > /dev/null 2>&1

# Restart qjoypad IF DTWPID qjoypad@Desktop is Enabled + startx is running
if [[ -f /etc/xdg/autostart/qjoypad-start.desktop ]] && pgrep -f startx &> /dev/null 2>&1; then qjoypad-start > /dev/null 2>&1; fi
