#!/bin/sh

PART_NAME=firmware

platform_do_upgrade() {
	default_do_upgrade "$1"
}

platform_check_image() {
	return 0
}
