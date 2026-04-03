#!/bin/sh

. /lib/airoha.sh

board=$(airoha_board_detect)

case "$board" in
innbox-g93)
	status_led="power"
	;;
*)
	status_led=""
	;;
esac
