PART_NAME=firmware
REQUIRE_IMAGE_METADATA=1

platform_check_image() {
	return 0
}

platform_do_upgrade() {
	local board=$(board_name)

	case "$board" in
	arcadyan,vgv952cjw33-e-ir-vpe|\
	arcadyan,vgv952cjw33-e-ir-smp|\
	arcadyan,vgv953akw22-b-23-smp|\
	arcadyan,vgv953akw22-b-23-vpe|\
	avm,fritz3370-rev2-hynix|\
	avm,fritz3370-rev2-micron|\
	avm,fritz3390|\
	avm,fritz7362sl|\
	avm,fritz7412|\
	avm,fritz7430|\
	bt,homehub-v5a|\
	zyxel,p-2812hnu-f1|\
	zyxel,p-2812hnu-f3)
		nand_do_upgrade $1
		;;
	*)
		default_do_upgrade "$1"
		;;
	esac
}
