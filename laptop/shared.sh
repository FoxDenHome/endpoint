setec() {
	sudo ectool led battery "$1"
	sudo ectool led power "$1"
}

setkb() {
	max="$(qdbus6 org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement/Actions/KeyboardBrightnessControl org.kde.Solid.PowerManagement.Actions.KeyboardBrightnessControl.keyboardBrightnessMax)"
	qdbus6 org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement/Actions/KeyboardBrightnessControl org.kde.Solid.PowerManagement.Actions.KeyboardBrightnessControl.setKeyboardBrightness "$((max * "$1" / 100))"
}

setscr() {
	max="$(qdbus6 org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement/Actions/BrightnessControl org.kde.Solid.PowerManagement.Actions.BrightnessControl.brightnessMax)"
	qdbus6 org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement/Actions/BrightnessControl org.kde.Solid.PowerManagement.Actions.BrightnessControl.setBrightness "$(( max * "$1" / 100 ))"
}
