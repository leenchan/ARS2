cmd_/home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi/.install := bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi ./include/uapi/linux/hsi cs-protocol.h hsi_char.h; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi ./include/linux/hsi ; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi ./include/generated/uapi/linux/hsi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi/$$F; done; touch /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/hsi/.install
