
type 'board_name' >/dev/null 2>/dev/null || . /lib/functions.sh

export_ota_url() {
    [ "$(board_name)" = "Realtek,rtd-1296" ] || return 1
    export -n OTA_URL_BASE="https://fw.koolcenter.com/iStoreOS/ars2"
}
