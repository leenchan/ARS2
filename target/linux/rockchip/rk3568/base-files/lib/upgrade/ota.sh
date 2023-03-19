
type 'board_name' >/dev/null 2>/dev/null || . /lib/functions.sh

export_ota_url() {
	local board="$(board_name)"
	case "$board" in
	fastrhino,r66s|\
	fastrhino,r68s)
		export -n OTA_URL_BASE="https://fw.koolcenter.com/iStoreOS/${board##*,}"
		;;
	friendlyelec,nanopi-r5s)
		export -n OTA_URL_BASE="https://fw.koolcenter.com/iStoreOS/${board##*-}"
		;;
	firefly,rk3568-roc-pc)
		export -n OTA_URL_BASE="https://fw.koolcenter.com/iStoreOS/station-p2"
		;;
	*)
		return 1
		;;
	esac
}
