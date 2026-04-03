#!/bin/sh

airoha_board_detect() {
	local model
	local board

	model=$(awk 'BEGIN{FS="[ \t:]+"} /model/ {print $2}' /proc/device-tree/model 2>/dev/null)

	case "$model" in
	"Innbox G93")
		board="innbox-g93"
		;;
	*)
		board="generic"
		;;
	esac

	echo "$board"
}
